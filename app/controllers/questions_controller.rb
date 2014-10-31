class QuestionsController < ApplicationController
  def new
  	Question.new
  end

  def create
  	@question = Question.new(question_params)
  	if @question.save
  		redirect_to :action=>"new"
  	else
  		redirect_to :action=>"create"
  	end
  end

  private
  def question_params
  	params.require(:question).permit(:sexually_transmitted_diseases_detail,:illness_or_injury,:heart_disease,:hypertension,:cardiac_arrythmia,:tobacco_use,:current_use,:asthma,:emphysema,:tb,:tb_treated,:current_tb_symptoms,:history_of_stroke,:seizure_disorder,:major_impairements,:major_mental_disorder,:use_of_drugs,:addiction_of_substance,:other_disorders,:sucide_attempt,:serious_injury_others,:Pregnancy,:sexually_transmitted_diseases,:diabetes,:thyroid_disease,:history_of_malaria,:malignancy_specify,:chronic_renal_disease,:chronic_liver_disease,:hansen_disease,:pau_mul,:treated_mul_pau,:visible_disability,:other_treatment)
  end

end
