class AddColumnAppointmentEmbassy < ActiveRecord::Migration
  def change
  	add_column "appointments","appointment_embassy",:integer
  end
end
