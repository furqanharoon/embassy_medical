class ChangePatientIdToQuestions < ActiveRecord::Migration
  def change
  	change_column("questions","patient_id",:integer)
  end
end
