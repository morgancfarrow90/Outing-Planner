# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2020_06_23_152748) do

  create_table "neighborhoods", force: :cascade do |t|
    t.string "name"
    t.string "city"
    t.string "state"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "outings", force: :cascade do |t|
    t.integer "user_id"
    t.integer "neighborhood_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "site_stops", force: :cascade do |t|
    t.integer "outing_id"
    t.integer "site_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "sites", force: :cascade do |t|
    t.string "name"
    t.text "details"
    t.string "address"
    t.integer "start_time"
    t.integer "end_time"
    t.boolean "monday", default: false
    t.boolean "tuesday", default: false
    t.boolean "wednesday", default: false
    t.boolean "thursday", default: false
    t.boolean "friday", default: false
    t.boolean "saturday", default: false
    t.boolean "sunday", default: false
    t.integer "neighborhood_id"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "special_stops", force: :cascade do |t|
    t.integer "outing_id"
    t.integer "special_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "specials", force: :cascade do |t|
    t.string "name"
    t.text "details"
    t.string "address"
    t.integer "neighborhood_id"
    t.boolean "monday", default: false
    t.boolean "tuesday", default: false
    t.boolean "wednesday", default: false
    t.boolean "thursday", default: false
    t.boolean "friday", default: false
    t.boolean "saturday", default: false
    t.boolean "sunday", default: false
    t.integer "start_time"
    t.integer "end_time"
    t.integer "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
