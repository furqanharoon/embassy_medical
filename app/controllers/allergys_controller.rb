class AllergysController < ApplicationController
  def new
  end

  def index
    @allergy = Allergy.all
  end

  def show
  end

  def create
    @allergy = Allergy.new(allergy_params)
    if @allergy.save
      redirect_to :action=>'new' and return
    end
  end

  def edit
    @allergy = Allergy.find(params[:id])
  end

  def update
    @allergy = Allergy.find(params[:id])
    @allergy =@allergy.update_attributes(allergy_params)
    if  @allergy
      redirect_to :action=>'index'
    end
  end

  def delete
  end

  def destroy
    @allergy = Allergy.find(params[:id])
    @allergy.destroy
    redirect_to :action=>'index'
  end

  private
  def allergy_params
    params.require(:allergy).permit(:allergy_name,:allergy_reaction,:allergy_status)
  end
end
