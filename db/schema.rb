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

ActiveRecord::Schema.define(version: 2019_06_23_081955) do

  create_table "flats", force: :cascade do |t|
    t.string "name"
    t.string "address"
    t.text "description"
    t.integer "price_per_night"
    t.integer "number_of_guests"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "suppliers", force: :cascade do |t|
    t.string "name"
    t.string "short_name"
    t.string "location_supplier"
    t.string "location_dgcfs"
    t.string "location_xmcfs"
    t.string "location_yantian"
    t.string "location_xiamen"
    t.string "distance_dgcfs"
    t.string "duration_dgcfs"
    t.string "distance_yantian"
    t.string "duration_yantian"
    t.string "distance_xmcfs"
    t.string "duration_xmcfs"
    t.string "distance_xiamen"
    t.string "duration_xiamen"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
