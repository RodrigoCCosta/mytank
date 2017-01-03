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

ActiveRecord::Schema.define(version: 20161228163839) do

  create_table "cars", force: :cascade do |t|
    t.string   "brand"
    t.string   "name"
    t.string   "version"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "yearmodel"
    t.float    "tankvol"
  end

  create_table "tanks", force: :cascade do |t|
    t.integer  "car_id"
    t.float    "distance"
    t.float    "fillvol"
    t.float    "price"
    t.string   "fuel"
    t.string   "way"
    t.date     "startdate"
    t.date     "finaldate"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.text     "obs"
    t.index ["car_id"], name: "index_tanks_on_car_id"
  end

end
