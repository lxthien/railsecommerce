class CreateNews < ActiveRecord::Migration
  def change
    create_table :news do |t|
      t.integer :newscatalog_id
      t.string :title
      t.string :url
      t.text :description
      t.text :content
      t.string :images
      t.boolean :active
      t.boolean :recycle
      t.boolean :isComment
      t.boolean :isHot
      t.string :tag
      t.integer :position
      t.text :page_title
      t.text :page_description
      t.text :page_keyword

      t.timestamps
    end
  end
end
