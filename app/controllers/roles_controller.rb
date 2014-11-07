class RolesController < ApplicationController
  def index
    @roles=Role.all
  end

  def show
  end

  def new
  end

  def create
    role=Role.create(attr_access)
    redirect_to :action=>"new"
  end

  def edit
    @menuitems=MenuItems.all
    @checked=RoleRelation.where("role_id = #{params[:id]}").order("menuitems_id ASC")
  end

  def update
    rights=params[:rights]
    old=RoleRelation.where("role_id = #{params[:id]}")
    old.destroy_all
    if !rights.blank?
      rights.each do |r|
       reference=RoleRelation.new(:menuitems_id=>r,:role_id=>params[:id])
       reference.save

      end

    end
    redirect_to :action=>"edit" , :id=>params[:id]
  end

  def delete
  end

  def destroy
    Role.destroy(params[:id])
    redirect_to :action=>"index"
  end

private
  def attr_access
    params.require(:role).permit(:role_name)
  end
end
