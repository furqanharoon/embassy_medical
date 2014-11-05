class AddColumnToQuestions < ActiveRecord::Migration
  def change
  	add_column("questions","patient_id",:string,:after =>"id")
  end
end
