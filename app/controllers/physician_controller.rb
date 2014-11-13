class PhysicianController < ApplicationController
  def index
    @physician=Patient.all#.join('inner join countries')
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
    @question = Question.find_by_patient_id(params[:id])
  end

  def update
  end

  def delete
  end

  def destroy
  end
  def update_history
    @update_hist = Question.find(params[:id])
    @update_hist = @update_hist.update_attributes(history_params)

  end

  def view_forms
    
  end
  private
  def history_params
    params.require(:question).permit(:patient_id,:sexually_transmitted_diseases_detail,:illness_or_injury,:heart_disease,:hypertension,:cardiac_arrythmia,:tobacco_use,:current_use,:asthma,:emphysema,:tb,:tb_treated,:current_tb_symptoms,:history_of_stroke,:seizure_disorder,:major_impairements,:major_mental_disorder,:use_of_drugs,:addiction_of_substance,:other_disorders,:sucide_attempt,:serious_injury_others,:Pregnancy,:sexually_transmitted_diseases,:diabetes,:thyroid_disease,:history_of_malaria,:malignancy_specify,:chronic_renal_disease,:chronic_liver_disease,:hansen_disease,:pau_mul,:treated_mul_pau,:visible_disability,:other_treatment)
  end
end
