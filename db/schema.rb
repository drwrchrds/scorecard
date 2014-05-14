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

ActiveRecord::Schema.define(version: 20140513225821) do

  create_table "cohorts", force: true do |t|
    t.string   "start"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "reports", force: true do |t|
    t.integer  "student_id"
    t.string   "day"
    t.string   "finished_exercises"
    t.string   "read_solutions"
    t.string   "read_readings"
    t.integer  "material_rating"
    t.text     "good_concept"
    t.text     "bad_concept"
    t.integer  "pair_rating"
    t.text     "pair_comments"
    t.text     "comments"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "ta_id"
    t.string   "blog_link"
    t.integer  "pair_id"
  end

  add_index "reports", ["student_id"], name: "index_reports_on_student_id"

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "cohort"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "students", ["email"], name: "index_students_on_email", unique: true

  create_table "ta", force: true do |t|
    t.boolean  "current"
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
