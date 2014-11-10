class VdlrController < ApplicationController
  def index
    @dates = 4.year.ago.to_date #Date exactly 4 years ago
    @patients = Patient.where("dob <= '#{@dates}'").all
  end

  def show
  end

  def new
  end

  def create
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
end
