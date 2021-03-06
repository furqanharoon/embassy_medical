class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.boolean "illness_or_injury"
    	t.boolean "heart_disease"
    	t.boolean "hypertension"
    	t.boolean "cardiac_arrythmia"
    	t.boolean "tobacco_use"
    	t.boolean "current_use"
    	t.boolean "asthma"
    	t.boolean "emphysema"
    	t.boolean "tb"
    	t.boolean "tb_treated"
    	t.boolean "current_tb_symptoms"
    	t.boolean "history_of_stroke"
    	t.boolean "seizure_disorder"
    	t.boolean "major_impairements"
    	t.boolean "major_mental_disorder"
    	t.boolean "use_of_drugs"
    	t.boolean "addiction_of_substance"
    	t.boolean "other_disorders"
    	t.boolean "sucide_attempt"
    	t.boolean "serious_injury_others"
    	t.boolean "Pregnancy"
    	t.boolean "sexually_transmitted_diseases"
    	t.boolean "sexually_transmitted_diseases_detail"
    	t.boolean "diabetes"
    	t.boolean "thyroid_disease"
    	t.boolean "history_of_malaria"
    	t.boolean "malignancy_specify"
    	t.boolean "chronic_renal_disease"
    	t.boolean "chronic_liver_disease"
    	t.boolean "hansen_disease"
    	t.boolean "pau_mul"
    	t.boolean "treated_mul_pau"
    	t.boolean "visible_disability"
    	t.boolean "other_treatment"
      t.timestamps
    end
  end
end