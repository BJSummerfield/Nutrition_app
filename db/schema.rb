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

ActiveRecord::Schema.define(version: 2019_05_07_010623) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "consumptions", force: :cascade do |t|
    t.integer "user_id"
    t.string "meal"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "protein"
    t.integer "sodium"
    t.integer "energy"
    t.string "name"
    t.string "date"
    t.integer "total_fat"
    t.integer "saturated_fat"
    t.integer "trans_fat"
    t.integer "cholesterol"
    t.integer "total_carbs"
    t.integer "dietary_fiber"
    t.integer "sugars"
    t.integer "vitamin_a"
    t.integer "vitamin_c"
    t.integer "calcium"
    t.integer "iron"
  end

  create_table "diets", force: :cascade do |t|
    t.integer "protein"
    t.integer "sodium"
    t.integer "energy"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "total_fat"
    t.integer "saturated_fat"
    t.integer "trans_fat"
    t.integer "cholesterol"
    t.integer "total_carbs"
    t.integer "dietary_fiber"
    t.integer "sugars"
    t.integer "vitamin_a"
    t.integer "vitamin_c"
    t.integer "calcium"
    t.integer "iron"
    t.integer "user_id"
  end

  create_table "groups", force: :cascade do |t|
    t.string "name"
    t.string "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
