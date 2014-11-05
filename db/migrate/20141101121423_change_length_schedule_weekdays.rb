class ChangeLengthScheduleWeekdays < ActiveRecord::Migration
  def change
  	change_column "schedules","schedule_weekdays",:string,:limit=>100
  end
end
