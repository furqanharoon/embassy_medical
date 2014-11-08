class AppointmentsController < ApplicationController
  layout :layout_resolve

  def index
      @date = DateTime.now.to_date
      @appointment = Appointment.select("appointments.*,countries.*,patients.*").joins('inner join countries on countries.id=appointments.appointment_embassy inner join patients on patients.id=appointments.patients_id ').where(:appointments => {appointment_day:@date  } )
  end

  def search
    @passport =  params[:passport_no] 
    if !params[:passport_no].blank?
      @appointment = Appointment.select("appointments.*,countries.*,patients.*").joins('inner join countries on countries.id=appointments.appointment_embassy inner join patients on patients.id=appointments.patients_id ').where('patients.passport like ?', '%'+@passport+'%')    
    else
      @appointment = Appointment.select("appointments.*,countries.*,patients.*").joins('inner join countries on countries.id=appointments.appointment_embassy inner join patients on patients.id=appointments.patients_id ').where(:patients => {gender: params[:gender]  })    
    end
    render :layout => false
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
  def layout_resolve
    if action_name=="search"
      return nil
    else
      return "application"
    end  
  end
  
end
