class AddTimedurationToSchedule < ActiveRecord::Migration
  def change
  	add_column "schedules" ,"schedules_time_duration",:string
  end
end
