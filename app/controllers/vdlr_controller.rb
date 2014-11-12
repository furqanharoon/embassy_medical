class VdlrController < ApplicationController
  def index
    @dates = 4.year.ago.to_date #Date exactly 4 years ago  where("dob <= '#{@dates}'").all
    @patients = Patient.find_by_sql("SELECT exam_patients.id as exam_id,patients.*
  FROM patients
INNER JOIN exam_patients ON exam_patients.id = patients.id where dob <= '#{@dates}' and patients.id not in (select patients_id from vdlrs) ")


  end
  def test
    @patient = Patient.find(params[:id])


  end
  
  def vdlr_result
    
    @dates = 4.year.ago.to_date #Date exactly 4 years ago  where("dob <= '#{@dates}'").all
    @patients_p = Patient.find_by_sql("SELECT exam_patients.id as exam_id,patients.*
    FROM patients
    INNER JOIN exam_patients ON exam_patients.id = patients.id where dob <= '#{@dates}' and patients.id in (select patients_id from vdlrs) ")
  end
  
  def vdlr_record
    @pat_id = params[:id]
    @exam_id = params[:test_id]
    puts "PAAAAAAAAATTTTTTTTTTTTTTTT"
    puts @pat_id
    puts @exam_id
    @pat = Patient.find(@pat_id)
  end

  def save_vdlr_result
    VdlrResult.create(vdlr_result_params)
    redirect_to :action=>"vdlr_result"
  end



  def show
  end

  def new

  end

  def create
    @vdlr = Vdlr.create(vdlr_params)
    if @vdlr
      redirect_to :action => 'index' and return
    else
      redirect_to :action =>'test' and return
    end
  end
  def test_child
    @patients_t = Patient.find(params[:id])
  end
  def chilld_form
    @patients_t = Patient.find(params[:id])

  end
  def child_test
    @dates = 4.year.ago.to_date #Date exactly 4 years ago  where("dob <= '#{@dates}'").all
    @patients_c = Patient.find_by_sql("SELECT exam_patients.id as exam_id,patients.*
    FROM patients
    INNER JOIN exam_patients ON exam_patients.id = patients.id where dob <= '#{@dates}' and patients.id not in (select patients_id from vdlrs) ")
  end

  def child_result

    @dates = 4.year.ago.to_date #Date exactly 4 years ago  where("dob <= '#{@dates}'").all
    @patients_res = Patient.find_by_sql("SELECT exam_patients.id as exam_id,patients.*
    FROM patients
    INNER JOIN exam_patients ON exam_patients.id = patients.id where dob <= '#{@dates}' and patients.id in (select patients_id from vdlrs) ")

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
  def vdlr_params
    params.require(:vdlr).permit(:exam_patients_id,:patients_id,:date_applied , :test_by , :injection_site , :supplier_name , :lot_num , :manufacture_date , :expiry_date)
  end

  def vdlr_result_params
    params.require(:vdlr_result).permit(:exam_patient_id,:test_type,:result_date,:read_by,:procedure_name,:result,:cutoff_value,:patient_value,:patients_id ,:result_mm)
  end



end
