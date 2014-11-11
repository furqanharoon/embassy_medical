class CreateVdlrResults < ActiveRecord::Migration
  def change
    create_table :vdlr_results do |t|
    	references:
    	t.integer "exam_id"
    	t.date "result_date" 
    	t.string "read_by"
    	t.string "procedure_name"
    	t.boolean "result"
    	t.double "cutoff_value"
    	t.double "patient_value"

      t.timestamps
    end
  end
end
