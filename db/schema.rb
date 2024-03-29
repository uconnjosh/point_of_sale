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

ActiveRecord::Schema.define(version: 20140325225953) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cashiers", force: true do |t|
    t.string "name"
  end

  create_table "products", force: true do |t|
    t.string  "name"
    t.decimal "price"
  end

  create_table "purchases", force: true do |t|
    t.integer "product_id"
    t.integer "receipt_id"
    t.integer "quantity"
    t.integer "cashier_id"
  end

  create_table "quantities", force: true do |t|
    t.integer "product_id"
    t.integer "quantity"
  end

  create_table "receipts", force: true do |t|
    t.decimal "total"
  end

end
