class CreateLots < ActiveRecord::Migration
  def change
    create_table :lots do |t|
    t.belongs_to :country
    t.column "lot_no" , :string
    t.column "manufacturing_date" , :date
    t.column "expiry_date" , :date
      t.timestamps
    end
  end
end
