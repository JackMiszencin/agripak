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

ActiveRecord::Schema.define(:version => 20130914182339) do

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
  end

end
