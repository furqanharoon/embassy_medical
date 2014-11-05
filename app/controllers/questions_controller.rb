class QuestionsController < ApplicationController
  def new
  	Question.new
  end

  def create
  	@question = Question.new(question_params)
    @question.patient_id=cookies[:patient_id]
  	if @question.save
  		redirect_to :action=>"new" , :controller=>"appointments"
  	else
  		redirect_to :action=>"create"
  	end
  end

  private
  def question_params
  	params.require(:question).permit(:patient_id,:sexually_transmitted_diseases_detail,:illness_or_injury,:heart_disease,:hypertension,:cardiac_arrythmia,:tobacco_use,:current_use,:asthma,:emphysema,:tb,:tb_treated,:current_tb_symptoms,:history_of_stroke,:seizure_disorder,:major_impairements,:major_mental_disorder,:use_of_drugs,:addiction_of_substance,:other_disorders,:sucide_attempt,:serious_injury_others,:Pregnancy,:sexually_transmitted_diseases,:diabetes,:thyroid_disease,:history_of_malaria,:malignancy_specify,:chronic_renal_disease,:chronic_liver_disease,:hansen_disease,:pau_mul,:treated_mul_pau,:visible_disability,:other_treatment)
  end

end
