class CreateVdlrResults < ActiveRecord::Migration
  def change
    create_table :vdlr_results do |t|
    	
    	t.references :exam_patient,:index=>true
      t.string "test_type"
    	t.date "result_date" 
    	t.string "read_by"
    	t.string "procedure_name"
    	t.boolean "result"
    	t.float "cutoff_value"
    	t.float "patient_value"

      t.timestamps
    end
  end
end
