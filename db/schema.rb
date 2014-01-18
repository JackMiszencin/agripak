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
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20131030023812) do

  create_table "farmer_sectors", :force => true do |t|
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "sector_id"
    t.integer  "farmer_id"
  end

  create_table "farmers", :force => true do |t|
    t.datetime "created_at",   :null => false
    t.datetime "updated_at",   :null => false
    t.string   "name"
    t.string   "phone_number"
    t.string   "email"
    t.string   "postal_code"
    t.integer  "zone_id"
  end

  create_table "images", :force => true do |t|
    t.string   "histogram_array"
    t.string   "histogram_path"
    t.datetime "created_at",      :null => false
    t.datetime "updated_at",      :null => false
    t.integer  "sector_id"
    t.string   "kind"
  end

  create_table "polygons", :force => true do |t|
    t.integer  "farmer_id"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.integer  "sector_id"
  end

  create_table "provinces", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "sectors", :force => true do |t|
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.string   "postal_code"
    t.string   "thermal_path"
    t.string   "thermal_text_path"
    t.string   "thermal_array"
    t.string   "normal_path"
    t.string   "normal_text_path"
    t.string   "normal_array"
    t.integer  "province_id"
    t.integer  "zone_id"
  end

  create_table "zones", :force => true do |t|
    t.string   "postal_code"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
    t.integer  "province_id"
    t.string   "city"
    t.string   "head_post_office"
    t.float    "average_rainfall"
  end

end
