class Products < ActiveRecord::Migration
  def change
  	create_table :products do |t|
  		t.string :name
  		t.integer :productcat_id
  		t.string :url
  		t.text :description
  		t.text :detail
  		t.string :price
  		t.string :promotionPrice
  		t.string :finalPrice
  		t.boolean :isNew
  		t.boolean :isHot
  		t.boolean :isSale
  		t.string :page_title
  		t.text :page_description
  		t.text :page_keyword
  	end
  end
end