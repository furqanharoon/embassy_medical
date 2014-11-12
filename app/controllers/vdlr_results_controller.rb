class VdlrResultsController < ApplicationController
  def index
  end

  def show
  end

  def new
    @patient = Patient.find(1)
    
  end

  def create
  end

  def edit
  end

  def update
  end
  def test
    @patient = Patient.find(1)

  end

  def delete
  end

  def destroy
  end
end
