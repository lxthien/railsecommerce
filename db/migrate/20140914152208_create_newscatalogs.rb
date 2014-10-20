class CreateNewscatalogs < ActiveRecord::Migration
  def change
    create_table :newscatalogs do |t|
      t.integer :parentcat_id
      t.string :name
      t.string :url
      t.text :description
      t.integer :position
      t.text :page_title
      t.text :page_description
      t.text :page_keyword

      t.timestamps
    end
  end
end
