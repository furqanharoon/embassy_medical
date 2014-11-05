class CreateSchedules < ActiveRecord::Migration
  def change
    create_table :schedules do |t|
    	t.belongs_to :Country
    	t.column "schedule_total_days" , :integer
    	t.column "schedule_weekdays" ,:string , :limit=>15
    	t.column "schedule_unit_time" , :integer 
      t.timestamps
    end
  end
end
