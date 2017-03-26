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

ActiveRecord::Schema.define(version: 20170325200923) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "price_ranges", force: :cascade do |t|
    t.datetime "start_date"
    t.datetime "end_date"
    t.integer  "vendor_id"
    t.text     "description"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
    t.index ["vendor_id"], name: "index_price_ranges_on_vendor_id", using: :btree
  end

  create_table "products", force: :cascade do |t|
    t.string   "name"
    t.text     "description"
    t.string   "unit_of_measure"
    t.float    "stock_min"
    t.float    "stock_max"
    t.integer  "shelf_life"
    t.decimal  "cost"
    t.decimal  "selling_price"
    t.string   "country_of_origin_code"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
  end

  create_table "vendor_price_quotes", force: :cascade do |t|
    t.integer  "product_id"
    t.integer  "vendor_id"
    t.string   "unit_of_measure"
    t.string   "stock_unit_of_measure"
    t.decimal  "price"
    t.string   "country_of_origin_code"
    t.datetime "valid_from"
    t.datetime "created_at",             null: false
    t.datetime "updated_at",             null: false
    t.index ["product_id"], name: "index_vendor_price_quotes_on_product_id", using: :btree
    t.index ["vendor_id"], name: "index_vendor_price_quotes_on_vendor_id", using: :btree
  end

  create_table "vendors", force: :cascade do |t|
    t.string   "name"
    t.string   "firstname"
    t.string   "lastname"
    t.string   "email"
    t.string   "phone"
    t.string   "address1"
    t.string   "address2"
    t.string   "city"
    t.string   "zip"
    t.string   "province"
    t.string   "country"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "price_ranges", "vendors"
  add_foreign_key "vendor_price_quotes", "products"
  add_foreign_key "vendor_price_quotes", "vendors"
end
