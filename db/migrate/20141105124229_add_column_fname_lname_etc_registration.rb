class AddColumnFnameLnameEtcRegistration < ActiveRecord::Migration
  def change
  	add_column("registrations","lname",:string,:limit=>100)
  	add_column("registrations","fname",:string,:limit=>100)
  end
end
