class CreateMedicines < ActiveRecord::Migration
  def change
    create_table :medicines do |t|
    t.column "medicine_name" ,:string
    t.column "medicine_qty" ,:integer
      t.timestamps
    end
  end
end
