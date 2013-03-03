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

ActiveRecord::Schema.define(:version => 20130303080348) do

  create_table "bounties", :force => true do |t|
    t.integer  "owner_id"
    t.integer  "hunter_id"
    t.string   "title"
    t.text     "description"
    t.datetime "due_date"
    t.string   "duration"
    t.float    "latitude"
    t.float    "longitude"
    t.text     "verification"
    t.string   "verification_type"
    t.string   "status"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
    t.integer  "reward"
  end

  create_table "tests", :force => true do |t|
    t.string   "name"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
  end

  create_table "users", :force => true do |t|
    t.string   "user_pic"
    t.string   "stripe_id"
    t.string   "stripe_tok"
    t.string   "city"
    t.string   "status"
    t.datetime "created_at", :null => false
    t.datetime "updated_at", :null => false
    t.string   "name"
  end

end
