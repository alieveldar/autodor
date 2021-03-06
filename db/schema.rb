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

ActiveRecord::Schema.define(version: 20171019074411) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "cartages", force: :cascade do |t|
    t.string   "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cartridge_supplies", force: :cascade do |t|
    t.integer  "model"
    t.integer  "count"
    t.integer  "state"
    t.date     "date"
    t.string   "service"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cartridge_transfers", force: :cascade do |t|
    t.integer  "model"
    t.integer  "count"
    t.date     "date"
    t.text     "department"
    t.integer  "person_out"
    t.text     "person_in"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cartridges", force: :cascade do |t|
    t.string   "model"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "day_road_lists", force: :cascade do |t|
    t.date     "day"
    t.integer  "fuel"
    t.integer  "station"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reports", force: :cascade do |t|
    t.integer  "station"
    t.integer  "f95"
    t.integer  "f92"
    t.integer  "f80"
    t.integer  "fdt"
    t.integer  "fgaz"
    t.integer  "magazine"
    t.integer  "vipcardonstock"
    t.integer  "vipcardtreid"
    t.integer  "discountonstock"
    t.integer  "discounttreid"
    t.integer  "carwasher"
    t.integer  "allinstation"
    t.integer  "allf95"
    t.integer  "allf92"
    t.integer  "allf80"
    t.integer  "allfdt"
    t.integer  "allfgaz"
    t.integer  "allmagazine"
    t.integer  "allvipcardonstock"
    t.integer  "allvipcardtreid"
    t.integer  "alldiscountonstock"
    t.integer  "alldiscounttreid"
    t.integer  "allcarwasher"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
    t.date     "changetime"
    t.datetime "deleted_at"
  end

  create_table "road_lists", force: :cascade do |t|
    t.date     "date"
    t.text     "timeout"
    t.text     "timein"
    t.integer  "fuelout"
    t.integer  "fuelin"
    t.integer  "cardcredit"
    t.integer  "fuelnorm"
    t.integer  "fuelfakt"
    t.integer  "odometr"
    t.text     "maping"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "stations", force: :cascade do |t|
    t.string   "name"
    t.string   "master"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer  "distance"
    t.integer  "outcity"
  end

  create_table "users", force: :cascade do |t|
    t.string   "name"
    t.string   "password_digest"
    t.string   "role"
    t.integer  "managestations"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
    t.string   "login"
  end

end
