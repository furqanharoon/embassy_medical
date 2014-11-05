class CountriesController < ApplicationController
  
  def index
    @countries=Country.all
  end

  def show
  end

  def edit
  end

  def update
    country=Country.find(params[:id])
    if country.status?
      country.status=false;
    else
      country.status=true;
    end
    country.save
    redirect_to :action=>"index"
  end

  def delete

  end

  def destroy
      country=Country.find(params[:id])
      country.destroy
      redirect_to :action=>"index"
  end

  def create
    @country =Country.create(access_attrs)
    if @country
      redirect_to :action=>"new"
    else

    end
  end

  def new
  end

  def access_attrs
    params.require(:Country).permit(:country_name,:status)
  end
    
  

end
