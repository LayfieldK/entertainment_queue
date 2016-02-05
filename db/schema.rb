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

ActiveRecord::Schema.define(version: 20160205011742) do

  create_table "entertainment_item_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "css_class"
  end

  create_table "entertainment_items", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
    t.integer  "row_order"
    t.integer  "user_id"
    t.integer  "entertainment_item_types_id"
    t.integer  "entertainment_item_type_id"
    t.string   "link"
  end

  add_index "entertainment_items", ["entertainment_item_type_id"], name: "index_entertainment_items_on_entertainment_item_type_id"
  add_index "entertainment_items", ["entertainment_item_types_id"], name: "index_entertainment_items_on_entertainment_item_types_id"
  add_index "entertainment_items", ["user_id"], name: "index_entertainment_items_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "email"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "password_digest"
    t.string   "remember_digest"
  end

end
