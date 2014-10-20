class News < ActiveRecord::Base
	has_attached_file :images
  	validates_attachment_content_type :images, :content_type => /\Aimage\/.*\Z/

  	def to_param
		"#{id} #{title}".parameterize
	end
end