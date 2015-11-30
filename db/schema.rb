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

ActiveRecord::Schema.define(version: 20151105042357) do

  create_table "contents", force: :cascade do |t|
    t.string   "name"
    t.string   "path"
    t.string   "mime"
    t.string   "extension"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "focuses", force: :cascade do |t|
    t.string   "FocusName"
    t.integer  "content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolio_contents", force: :cascade do |t|
    t.integer  "portfolio_id"
    t.integer  "content_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "portfolio_contents", ["content_id"], name: "index_portfolio_contents_on_content_id"
  add_index "portfolio_contents", ["portfolio_id"], name: "index_portfolio_contents_on_portfolio_id"

  create_table "portfolio_types", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "portfolios", force: :cascade do |t|
    t.string   "name"
    t.string   "title"
    t.text     "description"
    t.integer  "portfolio_type_id"
    t.integer  "user_id"
    t.integer  "tag_id"
    t.datetime "created_at",        null: false
    t.datetime "updated_at",        null: false
  end

  add_index "portfolios", ["portfolio_type_id"], name: "index_portfolios_on_portfolio_type_id"
  add_index "portfolios", ["tag_id"], name: "index_portfolios_on_tag_id"
  add_index "portfolios", ["user_id"], name: "index_portfolios_on_user_id"

  create_table "privacies", force: :cascade do |t|
    t.string   "privacy_name"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "tags", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "user_focus", force: :cascade do |t|
    t.integer  "user_id"
    t.integer  "focus_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "user_focus", ["focus_id"], name: "index_user_focus_on_focus_id"
  add_index "user_focus", ["user_id"], name: "index_user_focus_on_user_id"

  create_table "users", force: :cascade do |t|
    t.string   "username"
    t.string   "email"
    t.string   "string"
    t.string   "password"
    t.string   "gender"
    t.string   "contact"
    t.string   "text"
    t.string   "about"
    t.integer  "content_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "users", ["content_id"], name: "index_users_on_content_id"

end
