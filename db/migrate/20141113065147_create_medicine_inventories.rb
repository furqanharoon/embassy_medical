class CreateMedicineInventories < ActiveRecord::Migration
  def change
    create_table :medicine_inventories do |t|
    t.belongs_to :medicine
    t.column "medicine_lot" ,:string
    t.column "medicine_inventory" , :integer 
    t.column "medicine_purchase_price" , :integer 
    t.column "medicine_sale_price" , :integer
      t.timestamps
    end
  end
end
