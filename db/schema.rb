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

ActiveRecord::Schema.define(version: 2019_10_22_224903) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "movements", force: :cascade do |t|
    t.string "movement_type"
    t.datetime "datetime"
    t.string "airport"
    t.string "airline"
    t.string "flight_number"
    t.bigint "driver_id"
    t.bigint "traveler_id"
    t.index ["driver_id", "traveler_id"], name: "index_movements_on_driver_id_and_traveler_id", unique: true
    t.index ["driver_id"], name: "index_movements_on_driver_id"
    t.index ["traveler_id", "driver_id"], name: "index_movements_on_traveler_id_and_driver_id", unique: true
    t.index ["traveler_id"], name: "index_movements_on_traveler_id"
  end

  create_table "people", force: :cascade do |t|
    t.string "name"
    t.string "image"
  end

  add_foreign_key "movements", "people", column: "driver_id"
  add_foreign_key "movements", "people", column: "traveler_id"
end
