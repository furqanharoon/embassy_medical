class CreateAllergies < ActiveRecord::Migration
  def change
    create_table :allergies do |t|
    	t.column "allergy_name" , :string
    	t.column "allergy_reaction" , :string
    	t.column "allergy_status" , :boolean
      t.timestamps
    end
  end
end
