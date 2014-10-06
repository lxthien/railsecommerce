# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20140925094101) do

  create_table "news", force: true do |t|
    t.integer  "newscatalog_id"
    t.string   "title"
    t.string   "url"
    t.text     "description"
    t.text     "content"
    t.boolean  "active"
    t.boolean  "recycle"
    t.boolean  "isComment"
    t.boolean  "isHot"
    t.string   "tag"
    t.integer  "position"
    t.text     "page_title"
    t.text     "page_description"
    t.text     "page_keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "images_file_name"
    t.string   "images_content_type"
    t.integer  "images_file_size"
    t.datetime "images_updated_at"
  end

  create_table "newscatalogs", force: true do |t|
    t.integer  "parentcat_id"
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.integer  "position"
    t.text     "page_title"
    t.text     "page_description"
    t.text     "page_keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "productcats", force: true do |t|
    t.integer  "parentcat_id"
    t.string   "name"
    t.string   "url"
    t.text     "description"
    t.string   "images"
    t.boolean  "isHot"
    t.integer  "position"
    t.text     "page_description"
    t.text     "page_keyword"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "products", force: true do |t|
    t.string   "name"
    t.integer  "productcat_id"
    t.string   "url"
    t.text     "description"
    t.text     "detail"
    t.string   "price"
    t.string   "promotionPrice"
    t.string   "finalPrice"
    t.boolean  "isNew"
    t.boolean  "isHot"
    t.boolean  "isSale"
    t.string   "page_title"
    t.text     "page_description"
    t.text     "page_keyword"
    t.string   "images_file_name"
    t.string   "images_content_type"
    t.integer  "images_file_size"
    t.datetime "images_updated_at"
  end

  create_table "users", force: true do |t|
    t.string   "firstname"
    t.string   "lastname"
    t.string   "username"
    t.string   "password"
    t.string   "email"
    t.string   "phone"
    t.string   "birthday"
    t.string   "homePhone"
    t.string   "address"
    t.string   "city"
    t.boolean  "sex"
    t.boolean  "isActive"
    t.boolean  "isReceiveEmail"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
