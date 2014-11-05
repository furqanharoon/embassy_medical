class RegistrationsController < ApplicationController
  def index
    @registration = Registration.all
  end

  def show
  end

  def new
    Registration.new
  end

  def create
    @registration = Registration.new(registration_params)
     if @registration.save
       redirect_to :action=>'index'
     else
      redirect_to :action=>'create'
     end
  end

  def edit
  end

  def update
    @registration = Registration.find(params[:id])
    @registration = @registration.update_attribute(:status,params[:status])
    if @registration
      redirect_to :action=>'index'
    else
      redirect_to :action=>'index'
    end
  end

  def delete
  end

  def destroy
    @registration = Registration.find(params[:id])
    @registration.destroy
    redirect_to :action => 'index'
  end

  private
  def registration_params
    params.require(:registration).permit(:user_name,:password,:password_confirmation,:user_type,:status)
  end

end
