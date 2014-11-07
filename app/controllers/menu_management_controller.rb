class MenuManagementController < ApplicationController
  def index
    @headings=MenuHeading.all.map { |e| [e.heading_name,"#{e.id}"] }
    @file=File.open("config/routes.rb","r"){|file| file.read}
    @file=@file.split("##------------>>>Dont repeat this pattern<<<------------##")[0]
    @file=@file.split("Rails.application.routes.draw do")[1]
    @file=@file.split("'")
    temp=@file
    i=0.0
    j=0.0
    @file=[]
    temp.each do |t|
      
      if i%2.0 != 0
        item=MenuItems.where("action='#{t.split('/')[1]}' and   controller='#{t.split('/')[0]}'")
        if item.blank?
          @file[j]=t
          j=j+1
        end
      end
      i=i+1
    end

  end

  def show
  end

  def new
  end

  def create
    menu=MenuItems.create(attr_access)
    redirect_to :action=>"index"
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
  def attr_access 
    params.require(:menu_items).permit(:action,:controller,:lable,:is_menu,:menu_heading_id)
  end
end
