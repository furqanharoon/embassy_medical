class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
    	t.string "passport"
    	t.string "fname"
    	t.string "midname"
    	t.string "lname"
    	t.string "gender"
    	t.date "dob"
    	t.string "test_location"
    	t.string "clinic"
    	t.string "visa_type"
    	t.string "contact"
    	t.string "embassy"
    	

      t.timestamps
    end
  end
end
