class CreateExamPatients < ActiveRecord::Migration
  def change
    create_table :exam_patients do |t|
	    t.references :patient, index: true
		t.column "exam_place_city",:string,:limit=>20
   		t.column "exam_place_country",:string,:limit=>20
    	t.column "exam_date"  , :date
    	t.column "exam_exp_indicator", :integer
    	t.column "exam_exp_date" ,:date
    	t.column "radiology_services",:string,:limit=>20
    	t.column "screening_site",:string,:limit=>20
    	t.column "lab_syphillis",:string,:limit=>20
    	t.column "lab_tb",:string,:limit=>20
    	t.column "panel_physician",:string,:limit=>20
      t.timestamps
    end
  end
end
