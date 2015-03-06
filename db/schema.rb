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

ActiveRecord::Schema.define(version: 20150305200818) do

  create_table "attendence_records", force: true do |t|
    t.date     "attendence_date"
    t.string   "attend_status"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "student_id"
    t.integer  "subject_id"
  end

  create_table "colleges", force: true do |t|
    t.string   "college_name"
    t.string   "phone"
    t.string   "address"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "periodtimes", force: true do |t|
    t.time     "period_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "subject_id"
    t.integer  "timetable_id"
  end

  create_table "students", force: true do |t|
    t.string   "first_name"
    t.string   "last_name"
    t.string   "email"
    t.string   "year"
    t.string   "semester"
    t.string   "branch"
    t.datetime "date_of_birth"
    t.string   "phone"
    t.string   "gender"
    t.integer  "reg_no"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "college_id"
    t.integer  "roll_no"
  end

  create_table "students_subjects", id: false, force: true do |t|
    t.integer "subject_id"
    t.integer "student_id"
  end

  create_table "subjects", force: true do |t|
    t.string   "name"
    t.string   "year"
    t.string   "semester"
    t.string   "branch"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "teacher_id"
  end

  create_table "subjects_teachers", id: false, force: true do |t|
    t.integer "teacher_id"
    t.integer "subject_id"
  end

  add_index "subjects_teachers", ["subject_id"], name: "index_subjects_teachers_on_subject_id"
  add_index "subjects_teachers", ["teacher_id"], name: "index_subjects_teachers_on_teacher_id"

  create_table "teachers", force: true do |t|
    t.string   "first_name"
    t.integer  "staff_no"
    t.string   "password"
    t.string   "last_name"
    t.string   "dept"
    t.string   "phone"
    t.string   "email"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "college_id"
  end

  create_table "timetables", force: true do |t|
    t.string   "day"
    t.string   "year"
    t.string   "semester"
    t.string   "branch"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
