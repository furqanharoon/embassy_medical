class DoctorsController < ApplicationController
  def index
    @doctor = Doctor.all

  end

  def show
  end

  def new
    Doctor.new
  end

  def create
    @doctor = Doctor.create(doc_params)
  end

  def edit
    @doctor = Doctor.find(params[:id])
    
  end

  def update
  end

  def delete
  end

  def destroy
  end
  private 
  def doc_params
    params.require(:doctor).permit(:name , :time_interval , :remarks , :phone1 , :phone2 , :cell1, :cell2 , :email , :fee_charges , :charges_account)
  end
end
