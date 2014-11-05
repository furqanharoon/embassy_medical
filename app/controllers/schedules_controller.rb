class SchedulesController < ApplicationController
  def index

  end

  def show
  end

  def new
    schedules=Schedule.select("Country_id").all
    @countries=Country.where("id not in (?)",schedules).map { |c| [c.country_name, "#{c.id}" ] }
  end

  def create
    schedule=Schedule.create(access_attr)

    redirect_to :action=>"new"
  end

  def edit
  end

  def update
  end

  def delete
  end

  def destroy
  end
  def access_attr
    params.require(:Schedule).permit(:Country_id,:schedule_total_days,:schedule_weekdays,:schedule_unit_time,:schedules_time_duration)
  end
end
