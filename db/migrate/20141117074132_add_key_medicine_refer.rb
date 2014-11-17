class AddKeyMedicineRefer < ActiveRecord::Migration
  def up
  	add_reference :medcine_refers , :patients , index: true
  end
end
