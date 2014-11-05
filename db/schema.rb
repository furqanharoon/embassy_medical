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

ActiveRecord::Schema.define(version: 20141105071132) do

  create_table "appointments", force: true do |t|
    t.integer  "patients_id"
    t.string   "appointment_time"
    t.date     "appointment_day"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "appointment_embassy"
  end

  create_table "cities", force: true do |t|
    t.integer  "Country_id"
    t.string   "city_name",   limit: 100
    t.boolean  "city_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "clinics", force: true do |t|
    t.integer  "cities_id"
    t.string   "clinic_name", limit: 200
    t.boolean  "status"
    t.string   "address",     limit: 300
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "countries", force: true do |t|
    t.string   "country_name", limit: 50
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "patients", force: true do |t|
    t.string   "passport"
    t.string   "fname"
    t.string   "midname"
    t.string   "lname"
    t.string   "gender"
    t.date     "dob"
    t.string   "test_location"
    t.string   "clinic"
    t.string   "visa_type"
    t.string   "contact"
    t.string   "embassy"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "questions", force: true do |t|
    t.integer  "patient_id"
    t.boolean  "illness_or_injury"
    t.boolean  "heart_disease"
    t.boolean  "hypertension"
    t.boolean  "cardiac_arrythmia"
    t.boolean  "tobacco_use"
    t.boolean  "current_use"
    t.boolean  "asthma"
    t.boolean  "emphysema"
    t.boolean  "tb"
    t.boolean  "tb_treated"
    t.boolean  "current_tb_symptoms"
    t.boolean  "history_of_stroke"
    t.boolean  "seizure_disorder"
    t.boolean  "major_impairements"
    t.boolean  "major_mental_disorder"
    t.boolean  "use_of_drugs"
    t.boolean  "addiction_of_substance"
    t.boolean  "other_disorders"
    t.boolean  "sucide_attempt"
    t.boolean  "serious_injury_others"
    t.boolean  "Pregnancy"
    t.boolean  "sexually_transmitted_diseases"
    t.string   "sexually_transmitted_diseases_detail"
    t.boolean  "diabetes"
    t.boolean  "thyroid_disease"
    t.boolean  "history_of_malaria"
    t.boolean  "malignancy_specify"
    t.boolean  "chronic_renal_disease"
    t.boolean  "chronic_liver_disease"
    t.boolean  "hansen_disease"
    t.boolean  "pau_mul"
    t.boolean  "treated_mul_pau"
    t.boolean  "visible_disability"
    t.boolean  "other_treatment"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "registrations", force: true do |t|
    t.string   "user_name"
    t.string   "password_digest"
    t.string   "user_type"
    t.boolean  "status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "schedules", force: true do |t|
    t.integer  "Country_id"
    t.integer  "schedule_total_days"
    t.string   "schedule_weekdays",       limit: 100
    t.integer  "schedule_unit_time"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "schedules_time_duration"
  end
end
