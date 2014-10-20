class CreateProductcats < ActiveRecord::Migration
  def change
    create_table :productcats do |t|
      t.integer :parentcat_id
      t.string :name
      t.string :url
      t.text :description
      t.string :images
      t.boolean :isHot
      t.integer :position
      t.text :page_description
      t.text :page_keyword

      t.timestamps
    end
  end
end
