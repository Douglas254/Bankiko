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

ActiveRecord::Schema[7.0].define(version: 2022_10_02_054658) do
  create_table "accounts", force: :cascade do |t|
    t.integer "number"
    t.string "name"
    t.float "amount"
    t.boolean "is_active"
    t.string "user_full_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "branches", force: :cascade do |t|
    t.string "name"
    t.string "location"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "defaulters", force: :cascade do |t|
    t.string "name"
    t.float "amount"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "employees", force: :cascade do |t|
    t.string "name"
    t.integer "number"
    t.integer "age"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
