class AlterPatients < ActiveRecord::Migration
  def up
  	add_column("patients","alien_no",:string)
  	add_column("patients","lab_code",:string)
  	add_column("patients","birth_country",:string)
  	add_column("patients","present_country",:string)
  	add_column("patients","tb_status",:boolean , :default => false)
  	add_column("patients","embassy_country",:string)
  	add_column("patients","embassy_city",:string)
  	add_column("patients","prior_country",:string)
  	add_column("patients","passport_img",:binary)
  	add_column("patients","nic_img",:binary)
  	add_column("patients","other_docs",:binary)
  end
end