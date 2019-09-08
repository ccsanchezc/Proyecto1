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

ActiveRecord::Schema.define(version: 2019_09_05_165809) do

  create_table "appoiments", force: :cascade do |t|
    t.integer "consulting_room_id", null: false
    t.integer "patient_id", null: false
    t.integer "doctor_id", null: false
    t.datetime "begindate"
    t.datetime "enddate"
    t.string "comment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["consulting_room_id"], name: "index_appoiments_on_consulting_room_id"
    t.index ["doctor_id"], name: "index_appoiments_on_doctor_id"
    t.index ["patient_id"], name: "index_appoiments_on_patient_id"
  end

  create_table "consulting_rooms", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.string "typeroom"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "doctors", force: :cascade do |t|
    t.integer "document"
    t.string "name"
    t.string "lastname"
    t.integer "phone"
    t.integer "profession_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["profession_id"], name: "index_doctors_on_profession_id"
  end

  create_table "patients", force: :cascade do |t|
    t.integer "document"
    t.string "name"
    t.string "lastname"
    t.date "birthdate"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "professions", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "appoiments", "consulting_rooms"
  add_foreign_key "appoiments", "doctors"
  add_foreign_key "appoiments", "patients"
  add_foreign_key "doctors", "professions"
end
