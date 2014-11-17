class CreateMedcineRefers < ActiveRecord::Migration
  def change
    create_table :medcine_refers do |t|
    	t.belongs_to :medicine
    	t.integer "unit"
    	t.integer "dose"
    	t.integer "frequency"
    	t.integer "duration"

      t.timestamps
    end
  end
end
