class CreateClinics < ActiveRecord::Migration
  def change
    create_table :clinics do |t|
    	t.belongs_to :cities
    	t.column "clinic_name" ,:string,:limit=>200
    	t.column "status" ,:boolean
    	t.column "address",:string,:limit=>300
      t.timestamps
    end
  end
end
