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

ActiveRecord::Schema.define(version: 20151004082500) do

  create_table "group_youths", force: true do |t|
    t.string   "Name"
    t.string   "gatheringPlace"
    t.string   "schedules"
    t.date     "creationDate"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "managers_id"
    t.string   "parish_id"
  end

  create_table "members", force: true do |t|
    t.string   "fullName"
    t.date     "birthDate"
    t.string   "phone"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "group_id"
    t.string   "email"
  end

  create_table "parishes", force: true do |t|
    t.string   "Name"
    t.string   "address"
    t.string   "managers_id"
    t.integer  "vicarage_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "vicarages", force: true do |t|
    t.string   "Name"
    t.string   "managers_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
