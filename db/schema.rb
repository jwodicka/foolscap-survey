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

ActiveRecord::Schema.define(:version => 20120624234504) do

  create_table "availabilities", :force => true do |t|
    t.boolean  "fri_afternoon"
    t.boolean  "fri_evening"
    t.boolean  "sat_am"
    t.boolean  "sat_afternoon"
    t.boolean  "sat_evening"
    t.boolean  "sun_am"
    t.boolean  "sun_afternoon"
    t.datetime "created_at",    :null => false
    t.datetime "updated_at",    :null => false
  end

  create_table "panel_responses", :force => true do |t|
    t.integer  "panelist_interest"
    t.boolean  "would_moderate"
    t.boolean  "would_attend"
    t.datetime "created_at",        :null => false
    t.datetime "updated_at",        :null => false
  end

  create_table "panels", :force => true do |t|
    t.string   "name"
    t.text     "description"
    t.datetime "created_at",  :null => false
    t.datetime "updated_at",  :null => false
  end

  create_table "survey_responses", :force => true do |t|
    t.string   "token"
    t.string   "email"
    t.string   "name"
    t.boolean  "email_preference"
    t.text     "comment"
    t.datetime "created_at",       :null => false
    t.datetime "updated_at",       :null => false
  end

end
