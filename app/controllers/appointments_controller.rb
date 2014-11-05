class AppointmentsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @countries=Country.all.map { |c| [c.country_name , "#{c.id}"] }
    @times=[]
  end

  def create
    appointment=Appointment.new(attr_access)
    appointment.patients_id=cookies[:patient_id]
    appointment.save
    redirect_to :action=>"new"
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
  def attr_access
    params.require(:Appointment).permit(:patients_id,:appointment_time,:appointment_day,:appointment_embassy)
  end
end
