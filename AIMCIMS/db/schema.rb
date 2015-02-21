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

ActiveRecord::Schema.define(version: 20150220162502) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admin_staffs", force: true do |t|
    t.string   "staffId"
    t.string   "name"
    t.date     "dateHired"
    t.string   "position"
    t.string   "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "capital_build_ups", force: true do |t|
    t.string   "memberId"
    t.string   "membershipType"
    t.date     "memberSince"
    t.integer  "subscribedShares"
    t.integer  "totalAmountShares"
    t.decimal  "initialPayment"
    t.decimal  "totalPaidAmount"
    t.decimal  "paidSharesPercentage"
    t.string   "termsOfPayment"
    t.string   "status"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "cbu_contributions", force: true do |t|
    t.string   "memberID"
    t.datetime "date"
    t.decimal  "amount"
    t.string   "OrNumber"
    t.integer  "staffId"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "co_makers", force: true do |t|
    t.string   "coMakerId"
    t.string   "coMakerfname"
    t.string   "coMakermname"
    t.string   "coMakerlname"
    t.date     "birthdate"
    t.string   "address"
    t.string   "spouse"
    t.string   "contactNumber"
    t.string   "employer"
    t.string   "employerAddress"
    t.string   "employerContactNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan_applications", force: true do |t|
    t.integer  "loanTypeId"
    t.string   "memberId"
    t.string   "applicationStatus"
    t.date     "dateFiled"
    t.date     "dateApproved"
    t.date     "dateReleased"
    t.text     "otherResources"
    t.decimal  "totalFamilyIncome"
    t.string   "realProperties"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "member_id"
    t.integer  "loan_type_id"
    t.string   "applicationType"
    t.decimal  "loanAmount"
    t.string   "termOfPayment"
    t.decimal  "paymentPerTerm"
    t.decimal  "penaltyAmount"
    t.integer  "coMaker1_id"
    t.integer  "coMaker2_id"
    t.integer  "co_maker_id"
    t.string   "relationship1"
    t.string   "relationship2"
  end

  add_index "loan_applications", ["co_maker_id"], name: "index_loan_applications_on_co_maker_id", using: :btree
  add_index "loan_applications", ["loan_type_id"], name: "index_loan_applications_on_loan_type_id", using: :btree
  add_index "loan_applications", ["member_id"], name: "index_loan_applications_on_member_id", using: :btree

  create_table "loan_payments", force: true do |t|
    t.integer  "loanId"
    t.string   "memberId"
    t.date     "paymentDate"
    t.decimal  "amount"
    t.string   "orNumber"
    t.integer  "staffId"
    t.text     "remarks"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "loan_types", force: true do |t|
    t.string   "loanName"
    t.decimal  "maxAmount"
    t.decimal  "minAmmount"
    t.decimal  "interestRate"
    t.integer  "period"
    t.decimal  "penalty"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "login_accounts", force: true do |t|
    t.string   "loginId"
    t.string   "username"
    t.string   "password"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "members", force: true do |t|
    t.string   "memberId"
    t.string   "firstname",            null: false
    t.string   "middlename",           null: false
    t.string   "lastname",             null: false
    t.string   "gender"
    t.date     "birthdate"
    t.string   "permanentAddress"
    t.string   "homeNumber"
    t.string   "officeNumber"
    t.string   "mobileNumber"
    t.string   "personalEmail"
    t.string   "civilSatus"
    t.string   "spouse"
    t.string   "bankAccount"
    t.boolean  "enrolledWithPostbank"
    t.string   "employer"
    t.string   "employerNumber"
    t.string   "position"
    t.string   "officeAddress"
    t.string   "officeEmail"
    t.date     "dateApproved"
    t.text     "notes"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "membershipType"
    t.string   "occupationOfSpouse"
    t.string   "spouseOccupation"
    t.string   "spouseContactNumber"
  end

  create_table "savings", force: true do |t|
    t.string   "memberId"
    t.datetime "dateTime"
    t.decimal  "amount"
    t.string   "orNumber"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "admin_staff_id"
  end

  create_table "withdrawals", force: true do |t|
    t.string   "memberId"
    t.datetime "date"
    t.decimal  "amount"
    t.string   "orNumber"
    t.integer  "staffId"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_foreign_key "loan_applications", "co_makers", name: "loan_applications_co_maker_id_fk"
  add_foreign_key "loan_applications", "loan_types", name: "loan_applications_loan_type_id_fk"
  add_foreign_key "loan_applications", "members", name: "loan_applications_member_id_fk"

end
