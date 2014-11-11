class CreateVdlrs < ActiveRecord::Migration
  def change
    create_table :vdlrs do |t|
    	t.date "date_applied"
    	t.string "test_by"
    	t.string "injection_site"
    	t.string "supplier_name"
    	t.string "lot_num"
    	t.date "manufacture_date"
    	t.date "expiry_date"

      t.timestamps
    end
  end
end
