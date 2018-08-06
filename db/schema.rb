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

ActiveRecord::Schema.define(version: 20180806140847) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "borrowers", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone"
    t.string "street"
    t.string "state"
    t.integer "zip"
    t.string "company_name"
    t.string "employer_street"
    t.string "employer_state"
    t.integer "employer_zip"
    t.string "current_position"
    t.integer "salary"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "city"
    t.integer "routing_number"
    t.integer "bank_account"
    t.integer "monthly_income"
    t.integer "loan_amount"
    t.string "loan_term"
    t.string "employer_phone"
    t.datetime "start_date"
    t.datetime "end_date"
    t.string "transaction_id"
    t.index ["email"], name: "index_borrowers_on_email", unique: true
    t.index ["reset_password_token"], name: "index_borrowers_on_reset_password_token", unique: true
    t.index ["transaction_id"], name: "index_borrowers_on_transaction_id"
  end

  create_table "central_markets", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "lender_id"
    t.bigint "borrower_id"
    t.index ["borrower_id"], name: "index_central_markets_on_borrower_id"
    t.index ["lender_id"], name: "index_central_markets_on_lender_id"
  end

  create_table "lenders", force: :cascade do |t|
    t.string "first_name"
    t.string "last_name"
    t.integer "phone"
    t.string "street"
    t.string "state"
    t.integer "zip"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "confirmation_token"
    t.datetime "confirmed_at"
    t.datetime "confirmation_sent_at"
    t.string "unconfirmed_email"
    t.string "city"
    t.integer "routing_number"
    t.integer "bank_account_number"
    t.string "employer_name"
    t.integer "employer_phone"
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer "deposit_amount"
    t.string "transaction_id"
    t.index ["email"], name: "index_lenders_on_email", unique: true
    t.index ["reset_password_token"], name: "index_lenders_on_reset_password_token", unique: true
    t.index ["transaction_id"], name: "index_lenders_on_transaction_id"
  end

  add_foreign_key "central_markets", "borrowers"
  add_foreign_key "central_markets", "lenders"
end
