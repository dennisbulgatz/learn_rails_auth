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

ActiveRecord::Schema.define(version: 20150219042653) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "terms", force: :cascade do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "created_by_id"
    t.integer  "updated_by_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "terms", ["created_by_id"], name: "index_terms_on_created_by_id", using: :btree
  add_index "terms", ["updated_by_id"], name: "index_terms_on_updated_by_id", using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "email"
    t.string   "password_hash"
    t.string   "password_salt"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.datetime "last_logged_in"
  end

end
