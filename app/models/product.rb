class Product < ActiveRecord::Base
	has_attached_file :images
  	validates_attachment_content_type :images, :content_type => /\Aimage\/.*\Z/

  	def self.getListCategory(id)
  		listArrProductcat = []
  		productcats = Productcat.where(parentcat_id: id)
  		productcats.each do |productcat|
  			listArrProductcat.push(productcat.id)
  		end
  		return listArrProductcat
  	end

    def self.search(search)
      if search
        find(all, :conditions => ['name LIKE ?', "%#{search}%"])
      else
        find(all)
      end
    end
end