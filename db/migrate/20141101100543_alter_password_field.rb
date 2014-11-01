class AlterPasswordField < ActiveRecord::Migration
  def up
  	rename_column("registrations","password","password_digest")
  	#change_column("questions","sexually_transmitted_diseases_detail",:string)
  end
end
