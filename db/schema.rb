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

ActiveRecord::Schema.define(version: 2021_12_31_130450) do

  create_table "banks", force: :cascade do |t|
    t.string "name"
    t.string "edrpou"
    t.string "mfo"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "consumer_accounts", force: :cascade do |t|
    t.integer "consumer_id", null: false
    t.integer "bank_id", null: false
    t.string "account"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["bank_id"], name: "index_consumer_accounts_on_bank_id"
    t.index ["consumer_id"], name: "index_consumer_accounts_on_consumer_id"
  end

  create_table "consumers", force: :cascade do |t|
    t.string "full_name"
    t.string "passport_number"
    t.string "identity_code"
    t.string "house"
    t.string "house_section"
    t.string "apartment"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.integer "street_id", null: false
    t.index ["street_id"], name: "index_consumers_on_street_id"
  end

  create_table "payments", force: :cascade do |t|
    t.date "date"
    t.boolean "paid"
    t.string "report_number"
    t.text "description"
    t.float "sum"
    t.string "code_kfk"
    t.string "code_kek"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "streets", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "password_digest"
    t.string "email"
    t.string "full_name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  add_foreign_key "consumer_accounts", "banks"
  add_foreign_key "consumer_accounts", "consumers"
  add_foreign_key "consumers", "streets"
end
