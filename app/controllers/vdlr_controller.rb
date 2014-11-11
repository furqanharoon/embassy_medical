class VdlrController < ApplicationController
  def index
    @dates = 4.year.ago.to_date #Date exactly 4 years ago
    @patients = Patient.where("dob <= '#{@dates}'").all
  end
  def test
    @patient = Patient.find(1)

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
    params.require(:vdlr).permit(:date_applied , :test_by , :injection_site , :supplier_name , :lot_num , :manufacture_date , :expiry_date)
  end
end
