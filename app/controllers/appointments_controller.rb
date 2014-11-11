class AppointmentsController < ApplicationController
  

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

  def exam_add
    @patient=Patient.find(params[:id])
    @cities=City.all.map { |e| [e.city_name,e.city_name]  }
    @countries=Country.all.map { |e| [e.country_name,e.country_name] }
  end


  def insert_exam
    ExamPatient.create(exam_attr)
    redirect_to :action=>"index"
  end


  def exam_attr
    params.require(:exam_patient).permit(:patient_id,:exam_place_city,:exam_place_country,:exam_date,:exam_exp_indicator,:exam_exp_date,:radiology_services,:screening_site,:lab_syphillis,:lab_tb,:panel_physician)
  end

  def attr_access
    params.require(:Appointment).permit(:patients_id,:appointment_time,:appointment_day,:appointment_embassy)
  end
  
  
end
