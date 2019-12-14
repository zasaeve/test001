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

ActiveRecord::Schema.define(version: 2019_12_14_070429) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "animals", force: :cascade do |t|
    t.string "animal_subid"
    t.decimal "animal_area_pkid"
    t.string "animal_kind"
    t.string "animal_sex"
    t.string "animal_age"
    t.string "animal_sterilization"
    t.string "animal_foundplace"
    t.string "album_file"
    t.boolean "on_sell", default: false
    t.string "animal_status"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "favorites", force: :cascade do |t|
    t.bigint "animal_id", null: false
    t.bigint "user_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["animal_id"], name: "index_favorites_on_animal_id"
    t.index ["user_id"], name: "index_favorites_on_user_id"
  end

  create_table "messages", force: :cascade do |t|
    t.text "message_content"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "reservation_pets", force: :cascade do |t|
    t.string "adopted_animal"
    t.bigint "reservation_id", null: false
    t.bigint "animal_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["animal_id"], name: "index_reservation_pets_on_animal_id"
    t.index ["reservation_id"], name: "index_reservation_pets_on_reservation_id"
  end

  create_table "reservations", force: :cascade do |t|
    t.string "reservation_status"
    t.datetime "reservation_datetime"
    t.string "reservation_animals_id"
    t.text "reservation_note"
    t.date "reservation_success_time"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "shelters", force: :cascade do |t|
    t.string "shelter_name"
    t.string "shelter_address"
    t.string "shelter_tel"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password"
    t.string "user_name"
    t.string "sender_tel"
    t.text "sender_address"
    t.datetime "available_time"
    t.boolean "sender", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "favorites", "animals"
  add_foreign_key "favorites", "users"
  add_foreign_key "reservation_pets", "animals"
  add_foreign_key "reservation_pets", "reservations"
end
