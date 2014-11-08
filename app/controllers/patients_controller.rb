class PatientsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @patient = Patient.new
    
  end

  def create
    @patient = Patient.create(patient_params)

    if @patient
      cookies[:patient_id]=@patient.id
      redirect_to :controller =>"questions" ,:action => 'new' and return
    else
      render 'new'
    end
  end

  def edit
    @patient = Patient.find(2)
    @countries=Country.all
    @cities=Country.joins(:cities).select("countries.country_name,cities.*")
  end

  def update
  end

  def delete
  end

  def destroy
  end

  def patient_reg
    @countries=Country.all
    @cities=Country.joins(:cities).select("countries.country_name,cities.*")
    @patient = Patient.find(params[:id])
  end

  def patient_submit
    if params[:patient][:tb_status].blank?
       @tb_status = 0 
    else
       @tb_status = 1
    end
    @patient_n = Patient.find(params[:patient][:id])
    @patient_n.update_attributes(patient_params)
    @patient_n = @patient_n.update_attribute('tb_status',@tb_status)
    if @patient_n
      redirect_to :action=> 'index' and return
    else
      redirect_to :action=> 'patient_submit' and return
    end
  end

  private 
  def patient_params
    params.require(:patient).permit(:passport , :fname , :lname , :midname , :gender , :dob , :test_location , :clinic , :visa_type , :contact , :embassy, :alien_no , :lab_code , :birth_country , :present_country , :tb_status , :embassy_country , :embassy_city , :prior_country , :passport_img , :nic_img , :other_docs)
  end
end
