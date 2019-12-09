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

ActiveRecord::Schema.define(version: 2019_11_30_190942) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "flights", force: :cascade do |t|
    t.string "direction"
    t.datetime "datetime"
    t.string "airport"
    t.string "airline"
    t.string "number"
    t.bigint "traveler_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["traveler_id"], name: "index_flights_on_traveler_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "rides", force: :cascade do |t|
    t.bigint "driver_id"
    t.bigint "traveler_id"
    t.bigint "flight_id"
    t.bigint "shuttle_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["driver_id", "traveler_id"], name: "index_rides_on_driver_id_and_traveler_id"
    t.index ["driver_id"], name: "index_rides_on_driver_id"
    t.index ["flight_id"], name: "index_rides_on_flight_id"
    t.index ["shuttle_id"], name: "index_rides_on_shuttle_id"
    t.index ["traveler_id", "driver_id"], name: "index_rides_on_traveler_id_and_driver_id"
    t.index ["traveler_id"], name: "index_rides_on_traveler_id"
  end

  create_table "shuttles", force: :cascade do |t|
    t.datetime "datetime"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "flights", "people", column: "traveler_id"
  add_foreign_key "rides", "people", column: "driver_id"
  add_foreign_key "rides", "people", column: "traveler_id"
end
