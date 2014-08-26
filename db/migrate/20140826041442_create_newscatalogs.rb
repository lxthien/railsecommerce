class CreateNewscatalogs < ActiveRecord::Migration
  def change
    create_table :newscatalogs do |t|
      t.integer :parentcat_id
      t.string :name
      t.text :description
      t.text :content
      t.integer :position
      t.text :page_description
      t.text :page_keyword

      t.timestamps
    end
  end
end
