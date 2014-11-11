class HealthCaresController < ApplicationController
  def index
    @health_record=Patient.find_by_sql("select patients.id as patient_id,patients.* from patients left join healthextenders on patients.id=healthextenders.Patient_id where healthextenders.id is NULL")
  end

  def new
    @allergy = Allergy.all.where({:allergy_status => true})
    @Patient = Patient.find_by_sql("select patients.*,TIMESTAMPDIFF(YEAR,patients.dob, CURDATE()) as years,mod(TIMESTAMPDIFF(MONTH,patients.dob, CURDATE()) , 12) as months,mod(TIMESTAMPDIFF(DAY,patients.dob, CURDATE()),30) as days from patients where id=#{params[:id]} ")
    @Patient = @Patient[0]
  end

  def show
  end

  def create
    Healthextender.create(health_care_record)
    @Patient_id       = params[:healthextender][:Patient_id]
    @allergy_name     = params[:healthextender][:allergy_name]
    @allergy_reaction = params[:healthextender][:allergy_reaction]
    @medicine         = params[:healthextender][:medicine]
    @allergy_name.each_with_index do |v,k|
      ExtendersAllergy.create(:allergy_name => @allergy_name[k],:allergy_reaction => @allergy_reaction[k],:Patient_id => @Patient_id,:medicine => @medicine[k])
    end
    redirect_to :action => 'index' and return
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  private
  def health_care_record
    params.require(:healthextender).permit(:Patient_id,:height,:weight,:sbp,:dbp,:left_eye,:right_eye,:heart_rate,:resp_rate,:uncor_l20,:uncor_r20,:cor_l20,:cor_r20,:vaccination_status,:pox_status,:tb_status)
  end

  #private
  #def health_care_allergy
    #params.require(:healthextender).permit(:Patient_id,:allergy_name,:allergy_reaction,:medicine)
  #end

end
