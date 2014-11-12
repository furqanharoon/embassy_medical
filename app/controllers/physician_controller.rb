class PhysicianController < ApplicationController
  def index
    @physician=Patient.all.join('inner join countries')
  end

  def new
  end

  def create
  end

  def show
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end

  def view_forms
    
  end
end
