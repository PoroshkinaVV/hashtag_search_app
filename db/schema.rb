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

ActiveRecord::Schema.define(version: 20160516184635) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string   "name",         limit: 32, null: false
    t.date     "start_date",              null: false
    t.date     "end_date",                null: false
    t.text     "description"
    t.time     "renew_period",            null: false
    t.integer  "user_id"
    t.datetime "created_at",              null: false
    t.datetime "updated_at",              null: false
  end

  add_index "events", ["name", "start_date", "end_date"], name: "index_events_on_name_and_start_date_and_end_date", unique: true, using: :btree
  add_index "events", ["user_id"], name: "index_events_on_user_id", using: :btree

  create_table "hashtag_events", force: :cascade do |t|
    t.integer  "hashtag_id", null: false
    t.integer  "event_id",   null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hashtag_events", ["event_id"], name: "index_hashtag_events_on_event_id", using: :btree
  add_index "hashtag_events", ["hashtag_id", "event_id"], name: "index_hashtag_events_on_hashtag_id_and_event_id", unique: true, using: :btree
  add_index "hashtag_events", ["hashtag_id"], name: "index_hashtag_events_on_hashtag_id", using: :btree

  create_table "hashtags", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "hashtags", ["name"], name: "index_hashtags_on_name", unique: true, using: :btree

  create_table "users", force: :cascade do |t|
    t.string   "username",        limit: 32, null: false
    t.string   "email",           limit: 40, null: false
    t.string   "last_name",       limit: 32, null: false
    t.string   "first_name",      limit: 32, null: false
    t.string   "second_name",     limit: 32
    t.string   "password_digest"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  add_index "users", ["username", "email"], name: "index_users_on_username_and_email", unique: true, using: :btree

  add_foreign_key "events", "users"
  add_foreign_key "hashtag_events", "events"
  add_foreign_key "hashtag_events", "hashtags"
end
