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

ActiveRecord::Schema.define(version: 20141031112654) do

  create_table "questions", force: true do |t|
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

end
