class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
    	t.string "name"
    	t.string "time_interval"
    	t.string "remarks"
    	t.string "phone1"
    	t.string "phone2"
    	t.string "cell1"
    	t.string "cell2"
    	t.string "email"
    	t.string "fee_charges"
    	t.string "charges_account"


      t.timestamps
    end
  end
end
