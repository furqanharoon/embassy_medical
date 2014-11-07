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

  def edit_rights
    @menuitems=MenuItems.all
    @checked=RoleRelation.where("registration_id = #{params[:id]}").order("menuitems_id ASC")
  end

  def update_rights
    rights=params[:rights]
    old=RoleRelation.where("registration_id = #{params[:id]}")
    old.destroy_all
    if !rights.blank?
      rights.each do |r|
       reference=RoleRelation.new(:menuitems_id=>r,:registration_id=>params[:id])
       reference.save

      end

    end
    redirect_to :action=>"edit_rights" , :id=>params[:id]
  end


  private
  def registration_params
    params.require(:registration).permit(:fname,:lname,:user_name,:password,:password_confirmation,:user_type,:status)
  end

end
