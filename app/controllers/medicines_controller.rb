class MedicinesController < ApplicationController
  def index
    @medicine = Medicine.all
  end

  def show
  end

  def new
  end

  def create
    @medicine = Medicine.create(medicine_attribute)
    if @medicine
      redirect_to :action=> 'index'
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
  

  def medicine_inventory
  @medicine_name = Medicine.find(params[:id])
  @lot_number = Lot.find_by_sql('select * from lots order by id DESC limit 1')
  @lot_number = @lot_number[0]
  end

  def add_medicines_inventory
    @medicine_name = Medicine.find(params[:medicine_inventory][:medicine_id])
    if @medicine_name.medicine_qty.blank?
      @qty = 0 
    else 
      @qty = @medicine_name.medicine_qty
    end
    @new_qty   = params[:medicine_inventory][:medicine_inventory]
    @total_qty = @qty.to_i+@new_qty.to_i
    @medicine_name.update_attribute(:medicine_qty , @total_qty)
    @inventory = MedicineInventory.create(inventory_attribute)
    if @inventory
      redirect_to :action => 'index'
    end
  end

  private
  def medicine_attribute
  params.require(:medicine).permit(:medicine_name)  
  end

  private 
  def inventory_attribute
    params.require(:medicine_inventory).permit(:medicine_id,:medicine_lot,:medicine_inventory,:medicine_purchase_price,:medicine_sale_price)
  end

end
