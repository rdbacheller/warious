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

ActiveRecord::Schema.define(version: 20150527222321) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string   "title"
    t.text     "blurb"
    t.text     "body"
    t.string   "picture"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "url"
  end

  create_table "series", force: :cascade do |t|
    t.string   "title",      limit: 128, default: "",                   null: false
    t.string   "author",     limit: 32,  default: "Emmanuel Goldstein", null: false
    t.integer  "total",                  default: 0,                    null: false
    t.string   "meta",                   default: "",                   null: false
    t.datetime "created_at",                                            null: false
    t.datetime "updated_at",                                            null: false
  end

  create_table "users", force: :cascade do |t|
    t.string   "username",   limit: 32,               null: false
    t.string   "password",   limit: 32,               null: false
    t.string   "email",      limit: 64,               null: false
    t.string   "site",       limit: 128, default: "", null: false
    t.integer  "priv",       limit: 2,   default: 0,  null: false
    t.integer  "flag",       limit: 2,   default: 0,  null: false
    t.string   "meta",                   default: "", null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

end
