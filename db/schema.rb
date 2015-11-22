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

ActiveRecord::Schema.define(version: 20150711221210) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.integer  "series_id"
    t.string   "title",           limit: 32,                    null: false
    t.string   "author",          limit: 16,                    null: false
    t.string   "catagory",        limit: 16,                    null: false
    t.string   "url",             limit: 32, default: "*null*", null: false
    t.text     "caption",                    default: "*null*", null: false
    t.text     "body",                       default: "*null*", null: false
    t.string   "last_updated_by", limit: 16,                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "posts", ["series_id"], name: "index_posts_on_series_id", using: :btree

  create_table "series", force: :cascade do |t|
    t.string   "title",           limit: 64, default: "<*% No Title Set %*>",   null: false
    t.string   "author",          limit: 32,                                    null: false
    t.integer  "flag",            limit: 2,  default: 0,                        null: false
    t.string   "last_updated_by", limit: 16,                                    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.text     "description",                default: ">>No Description Set<<", null: false
  end

  create_table "series_users", id: false, force: :cascade do |t|
    t.integer "series_id"
    t.integer "user_id"
  end

  add_index "series_users", ["series_id", "user_id"], name: "index_series_users_on_series_id_and_user_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 16,                     null: false
    t.string   "password",                                       null: false
    t.string   "email",           limit: 32,                     null: false
    t.string   "ip",              limit: 16, default: "0.1.2.3", null: false
    t.integer  "priv",            limit: 2,  default: 0,         null: false
    t.integer  "flag",            limit: 2,  default: 0,         null: false
    t.string   "last_updated_by", limit: 16, default: "kami",    null: false
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "users_posts", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "post_id"
  end

  add_index "users_posts", ["user_id", "post_id"], name: "index_users_posts_on_user_id_and_post_id", using: :btree

  create_table "users_series", id: false, force: :cascade do |t|
    t.integer "user_id"
    t.integer "series_id"
  end

  add_index "users_series", ["user_id", "series_id"], name: "index_users_series_on_user_id_and_series_id", using: :btree

end
