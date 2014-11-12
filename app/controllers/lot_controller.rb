class LotController < ApplicationController
  def index
    @lot = Lot.select('countries.*,lots.*').joins('inner join countries on countries.id=lots.id ')
  end

  def new
    @country = Country.all
  end

  def show
  end

  def create
    @lot = Lot.new(lot_attributes)
    if @lot.save
      redirect_to :action=>'index'
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

  private
  def lot_attributes
  params.require(:lot).permit(:country_id,:lot_no,:manufacturing_date,:expiry_date)  
  end

end
