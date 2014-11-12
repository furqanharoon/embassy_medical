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

ActiveRecord::Schema.define(version: 20141112112518) do

  create_table "allergies", force: true do |t|
    t.string   "allergy_name"
    t.string   "allergy_reaction"
    t.boolean  "allergy_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

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

  create_table "doctors", force: true do |t|
    t.string   "name"
    t.string   "time_interval"
    t.string   "remarks"
    t.string   "phone1"
    t.string   "phone2"
    t.string   "cell1"
    t.string   "cell2"
    t.string   "email"
    t.string   "fee_charges"
    t.string   "charges_account"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "exam_patients", force: true do |t|
    t.integer  "patient_id"
    t.string   "exam_place_city",    limit: 20
    t.string   "exam_place_country", limit: 20
    t.date     "exam_date"
    t.integer  "exam_exp_indicator"
    t.date     "exam_exp_date"
    t.string   "radiology_services", limit: 20
    t.string   "screening_site",     limit: 20
    t.string   "lab_syphillis",      limit: 20
    t.string   "lab_tb",             limit: 20
    t.string   "panel_physician",    limit: 20
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "exam_patients", ["patient_id"], name: "index_exam_patients_on_patient_id", using: :btree

  create_table "extenders_allergies", force: true do |t|
    t.integer  "Patient_id"
    t.string   "allergy_name"
    t.string   "allergy_reaction"
    t.string   "medicine"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "healthextenders", force: true do |t|
    t.integer  "Patient_id"
    t.string   "height"
    t.string   "weight"
    t.string   "sbp"
    t.string   "dbp"
    t.string   "left_eye"
    t.string   "right_eye"
    t.string   "heart_rate"
    t.string   "resp_rate"
    t.string   "uncor_l20"
    t.string   "uncor_r20"
    t.string   "cor_l20"
    t.string   "cor_r20"
    t.boolean  "vaccination_status"
    t.boolean  "pox_status"
    t.boolean  "tb_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_headings", force: true do |t|
    t.string   "heading_name",   limit: 100
    t.integer  "heading_status"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "menu_items", force: true do |t|
    t.string   "action",          limit: 50
    t.string   "controller",      limit: 50
    t.string   "lable",           limit: 100
    t.boolean  "is_menu"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "menu_heading_id"
  end

  add_index "menu_items", ["menu_heading_id"], name: "index_menu_items_on_menu_heading_id", using: :btree

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
    t.string   "alien_no"
    t.string   "lab_code"
    t.string   "birth_country"
    t.string   "present_country"
    t.boolean  "tb_status",       default: false
    t.string   "embassy_country"
    t.string   "embassy_city"
    t.string   "prior_country"
    t.binary   "passport_img"
    t.binary   "nic_img"
    t.binary   "other_docs"
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
    t.string   "lname",           limit: 100
    t.string   "fname",           limit: 100
  end

  create_table "role_relations", force: true do |t|
    t.integer  "registration_id"
    t.integer  "role_id"
    t.integer  "menuitems_id"
    t.boolean  "extended"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "role_relations", ["menuitems_id"], name: "index_role_relations_on_menuitems_id", using: :btree
  add_index "role_relations", ["registration_id"], name: "index_role_relations_on_registration_id", using: :btree
  add_index "role_relations", ["role_id"], name: "index_role_relations_on_role_id", using: :btree

  create_table "roles", force: true do |t|
    t.string   "role_name",  limit: 100
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

  create_table "vdlr_results", force: true do |t|
    t.integer  "exam_patient_id"
    t.string   "test_type"
    t.date     "result_date"
    t.string   "read_by"
    t.string   "procedure_name"
    t.boolean  "result"
    t.float    "cutoff_value",    limit: 24
    t.float    "patient_value",   limit: 24
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patients_id"
    t.string   "result_mm"
  end

  add_index "vdlr_results", ["exam_patient_id"], name: "index_vdlr_results_on_exam_patient_id", using: :btree
  add_index "vdlr_results", ["patients_id"], name: "index_vdlr_results_on_patients_id", using: :btree

  create_table "vdlrs", force: true do |t|
    t.date     "date_applied"
    t.string   "test_by"
    t.string   "injection_site"
    t.string   "supplier_name"
    t.string   "lot_num"
    t.date     "manufacture_date"
    t.date     "expiry_date"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "patients_id"
    t.integer  "exam_patients_id"
  end

  add_index "vdlrs", ["exam_patients_id"], name: "index_vdlrs_on_exam_patients_id", using: :btree
  add_index "vdlrs", ["patients_id"], name: "index_vdlrs_on_patients_id", using: :btree

end
