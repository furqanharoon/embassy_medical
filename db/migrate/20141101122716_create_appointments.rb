class CreateAppointments < ActiveRecord::Migration
  def change
    create_table :appointments do |t|
    	t.belongs_to :patients
    	t.column "appointment_time" , :string
    	t.column "appointment_day" , :date
      t.timestamps
    end
  end
end
