# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_11_05_062903) do
  create_table "people", force: :cascade do |t|
    t.string "name"
    t.integer "birth_year"
    t.string "gender"
    t.integer "homeworld"
    t.integer "species"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "planet_id", null: false
    t.integer "species_id", null: false
    t.string "api_id"
    t.index ["planet_id"], name: "index_people_on_planet_id"
    t.index ["species_id"], name: "index_people_on_species_id"
  end

  create_table "planets", force: :cascade do |t|
    t.string "name"
    t.string "climate"
    t.string "terrain"
    t.integer "population"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "api_id"
  end

  create_table "species", force: :cascade do |t|
    t.string "name"
    t.string "classification"
    t.string "designation"
    t.string "language"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "api_id"
  end

  add_foreign_key "people", "planets"
  add_foreign_key "people", "species"
end
