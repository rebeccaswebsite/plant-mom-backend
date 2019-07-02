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

ActiveRecord::Schema.define(version: 2019_07_02_134649) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "details", force: :cascade do |t|
    t.integer "plant_id"
    t.string "watering_schedule"
    t.string "sunlight_exposure"
    t.integer "temperature"
    t.integer "humidity"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_details_on_plant_id"
  end

  create_table "plants", force: :cascade do |t|
    t.string "common_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "img"
  end

  create_table "room_plants", force: :cascade do |t|
    t.integer "room_id"
    t.integer "plant_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_room_plants_on_plant_id"
    t.index ["room_id"], name: "index_room_plants_on_room_id"
  end

  create_table "rooms", force: :cascade do |t|
    t.integer "user_id"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_id"], name: "index_rooms_on_user_id"
  end

  create_table "suggestions", force: :cascade do |t|
    t.integer "plant_id"
    t.string "suggestion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["plant_id"], name: "index_suggestions_on_plant_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "details", "plants"
  add_foreign_key "room_plants", "plants"
  add_foreign_key "room_plants", "rooms"
  add_foreign_key "rooms", "users"
  add_foreign_key "suggestions", "plants"
end
