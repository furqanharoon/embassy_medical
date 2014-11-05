class CreateCountries < ActiveRecord::Migration
  def change
    create_table :countries do |t|
    	
    	t.column "country_name" ,:string ,:limit=>50
    	t.column "status" , :boolean 

      t.timestamps
    end
  end
end
