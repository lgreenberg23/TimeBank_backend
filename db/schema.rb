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

ActiveRecord::Schema.define(version: 20171001184143) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "posts", force: :cascade do |t|
    t.string "name"
    t.integer "poster_id"
    t.string "category"
    t.string "location"
    t.string "description"
    t.datetime "expiration_date"
    t.boolean "offer", default: false
    t.boolean "request", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "transactions", force: :cascade do |t|
    t.boolean "verified", default: false
    t.integer "post_id"
    t.integer "contacter_id"
    t.integer "hours", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.boolean "accepted", default: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "hours_banked", default: 0
    t.string "password_digest"
    t.boolean "poster", default: false
    t.boolean "contacter", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "location"
  end

end
