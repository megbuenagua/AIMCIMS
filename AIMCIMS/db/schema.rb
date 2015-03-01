# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150228152247) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_staffs", force: true do |t|
    t.string   "staff_name"
    t.date     "date_hired"
    t.string   "staff_position"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "staff_number"
  end

  create_table "capital_build_ups", force: true do |t|
    t.integer  "member_id"
    t.string   "membership_type"
    t.date     "member_since"
    t.integer  "subscribed_shares"
    t.decimal  "amount_per_shares"
    t.decimal  "total_amount_shares"
    t.decimal  "initial_payment"
    t.decimal  "total_paid_amount"
    t.decimal  "paid_shares_percentage"
    t.string   "terms_of_payment"
    t.string   "status"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cbu_contributions", force: true do |t|
    t.integer  "member_id"
    t.datetime "payment_date"
    t.decimal  "amount"
    t.string   "ornumber"
    t.integer  "staff_id"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "co_makers", force: true do |t|
    t.string   "comakerfname"
    t.string   "comakermname"
    t.string   "comakerlname"
    t.date     "birthdate"
    t.string   "address"
    t.string   "spouse"
    t.string   "contact_number"
    t.string   "employer"
    t.string   "employer_address"
    t.string   "employer_contact_number"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "comaker_number"
  end

  create_table "expenses", force: true do |t|
    t.string   "particulars"
    t.date     "expense_date"
    t.decimal  "amount"
    t.string   "approved_by"
    t.string   "received_by"
    t.integer  "staff_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan_applications", force: true do |t|
    t.string   "application_status"
    t.date     "date_filed"
    t.date     "date_approved"
    t.date     "date_released"
    t.text     "other_resources"
    t.decimal  "total_family_income"
    t.string   "real_properties"
    t.text     "remarks"
    t.string   "application_type"
    t.decimal  "loan_amount"
    t.string   "term_of_payment"
    t.decimal  "payment_per_term"
    t.decimal  "penalty_amount"
    t.string   "comaker1"
    t.string   "comaker2"
    t.string   "relationship1"
    t.string   "relationship2"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "member_id"
    t.integer  "loan_type_id"
    t.integer  "co_maker_id"
  end

  add_index "loan_applications", ["co_maker_id"], name: "index_loan_applications_on_co_maker_id", using: :btree
  add_index "loan_applications", ["loan_type_id"], name: "index_loan_applications_on_loan_type_id", using: :btree
  add_index "loan_applications", ["member_id"], name: "index_loan_applications_on_member_id", using: :btree

  create_table "loan_payments", force: true do |t|
    t.integer  "loan_id"
    t.integer  "member_id"
    t.date     "payment_date"
    t.decimal  "amount"
    t.string   "ornumber"
    t.integer  "staff_id"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan_types", force: true do |t|
    t.string   "loan_name"
    t.decimal  "maxamount"
    t.decimal  "minamount"
    t.decimal  "interest"
    t.integer  "period"
    t.decimal  "penalty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "login_accounts", force: true do |t|
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "member_number"
    t.string   "firstname",              null: false
    t.string   "middlename",             null: false
    t.string   "lastname",               null: false
    t.string   "gender"
    t.date     "birthdate"
    t.string   "permanent_address"
    t.string   "home_number"
    t.string   "office_number"
    t.string   "mobile_number"
    t.string   "personal_email"
    t.string   "civil_status"
    t.string   "spouse"
    t.string   "occupation_of_spouse"
    t.string   "spouse_contact"
    t.string   "bank_account"
    t.boolean  "enrolled_with_postbank"
    t.string   "employer"
    t.string   "employer_number"
    t.string   "work_position"
    t.string   "office_address"
    t.string   "office_email"
    t.string   "membership_type"
    t.date     "date_approved"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "savings", force: true do |t|
    t.integer  "member_id"
    t.datetime "date_time"
    t.decimal  "amount"
    t.string   "ornumber"
    t.integer  "staff_id"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "withdrawals", force: true do |t|
    t.integer  "member_id"
    t.datetime "date_time"
    t.decimal  "amount"
    t.string   "ornumber"
    t.integer  "staff_id"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "loan_applications", "co_makers", name: "comaker1"
  add_foreign_key "loan_applications", "co_makers", name: "comaker2"
  add_foreign_key "loan_applications", "loan_types", name: "loan_applications_loan_type_id_fk"
  add_foreign_key "loan_applications", "members", name: "loan_applications_member_id_fk"

end
