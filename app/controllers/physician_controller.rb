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

  def add_ref
    @pat_id = params[:id]
    @med = Medicine.all
  end


  def add_record_med
    @pat_id = params[:medicine_refer][:patients_id]
    @med_id = params[:medicine_refer][:medicine_id]
    @med_unit = params[:medicine_refer][:unit]
    @med_dose = params[:medicine_refer][:dose]
    @med_freq = params[:medicine_refer][:frequency]
    @med_dur = params[:medicine_refer][:duration]
    
    @med_id.each_with_index do |v,k|

    MedcineRefer.create(:medicine_id => @med_id[k],:unit => @med_unit[k],:dose => @med_dose[k],:frequency => @med_freq[k],:duration => @med_dur[k],:patients_id => @pat_id)

    end
    redirect_to :action => 'index' and return
  end

  def health_extender
    @pat_id = params[:id]
  end


  def view_forms
    
  end
  private
  def history_params
    params.require(:question).permit(:patient_id,:sexually_transmitted_diseases_detail,:illness_or_injury,:heart_disease,:hypertension,:cardiac_arrythmia,:tobacco_use,:current_use,:asthma,:emphysema,:tb,:tb_treated,:current_tb_symptoms,:history_of_stroke,:seizure_disorder,:major_impairements,:major_mental_disorder,:use_of_drugs,:addiction_of_substance,:other_disorders,:sucide_attempt,:serious_injury_others,:Pregnancy,:sexually_transmitted_diseases,:diabetes,:thyroid_disease,:history_of_malaria,:malignancy_specify,:chronic_renal_disease,:chronic_liver_disease,:hansen_disease,:pau_mul,:treated_mul_pau,:visible_disability,:other_treatment)
  end
end
