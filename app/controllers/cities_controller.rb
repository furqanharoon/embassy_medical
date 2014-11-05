class CitiesController < ApplicationController
  def index
    @cities=Country.joins(:cities).select("countries.country_name,cities.*")
  end

  def show
    @cities=Country.joins(:cities).select("countries.country_name,cities.*").where("countries.id=#{params[:id]}")
  end

  def edit
  end

  def update
    city=City.find(params[:id])
    if city.city_status
      city.city_status=false
    else
      city.city_status=true
    end
    city.save
    redirect_to :action=>"index"
  end

  def delete
  end

  def destroy
    city=City.find(params[:id])
    city.destroy
    redirect_to :action=>"index"
  end

  def create
    city=City.create(attr_access)
    if city
      redirect_to :action=>"new"
    else
    end
  end

  def new
    @countries=Country.all
  end

  def attr_access
    params.require(:City).permit(:Country_id,:city_name,:city_status)
  end
end
