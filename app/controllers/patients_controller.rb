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
  end

  def update
  end

  def delete
  end

  def destroy
  end

  def patient_reg
    
  end

  private 
  def patient_params
    params.require(:patient).permit(:passport , :fname , :lname , :midname , :gender , :dob , :test_location , :clinic , :visa_type , :contact , :embassy)
  end
end
