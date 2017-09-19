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

ActiveRecord::Schema.define(version: 20170919180256) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "offer_users", force: :cascade do |t|
    t.boolean "verified"
    t.integer "offer_id"
    t.integer "acceptor_id"
    t.integer "hours"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "offers", force: :cascade do |t|
    t.integer "poster_id"
    t.string "category"
    t.string "location"
    t.datetime "expiration_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.string "poster_id"
    t.string "category"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.integer "hours_banked", default: 0
    t.string "password_digest"
    t.boolean "poster", default: false
    t.boolean "acceptor", default: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
