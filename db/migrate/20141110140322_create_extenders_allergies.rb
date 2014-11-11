class CreateExtendersAllergies < ActiveRecord::Migration
  def change
    create_table :extenders_allergies do |t|
    	t.belongs_to :Patient
    	t.column "allergy_name" , :string
    	t.column "allergy_reaction" , :string
    	t.column "medicine" , :string

      t.timestamps
    end
  end
end
