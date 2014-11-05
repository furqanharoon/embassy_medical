class CreateRegistrations < ActiveRecord::Migration
  def change
    create_table :registrations do |t|
    	t.string "user_name", :unique => true 
    	t.string "password"
    	t.string "user_type"
    	t.boolean "status" 
      t.timestamps
    end
  end
end
