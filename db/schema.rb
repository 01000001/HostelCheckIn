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

ActiveRecord::Schema.define(version: 20131025184156) do

  create_table "beds", force: true do |t|
    t.string   "room"
    t.integer  "number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "bed_label"
  end

  create_table "bookings", force: true do |t|
    t.datetime "check_in_date"
    t.datetime "check_out_date"
    t.integer  "guest_id"
    t.integer  "bed_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "shift"
    t.string   "status"
  end

  add_index "bookings", ["bed_id"], name: "index_bookings_on_bed_id"
  add_index "bookings", ["guest_id"], name: "index_bookings_on_guest_id"

  create_table "days", force: true do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "guests", force: true do |t|
    t.string   "name"
    t.integer  "locker"
    t.integer  "price"
    t.integer  "deposit"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "note"
    t.string   "nationality"
    t.string   "passport_number"
    t.string   "payment_method"
  end

  create_table "sessions", force: true do |t|
    t.string   "session_id", null: false
    t.text     "data"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "sessions", ["session_id"], name: "index_sessions_on_session_id", unique: true
  add_index "sessions", ["updated_at"], name: "index_sessions_on_updated_at"

  create_table "users", force: true do |t|
    t.string   "name"
    t.string   "hashed_password"
    t.string   "salt"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
