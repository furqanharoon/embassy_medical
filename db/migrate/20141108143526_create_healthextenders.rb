class CreateHealthextenders < ActiveRecord::Migration
  def change
    create_table :healthextenders do |t|
    t.belongs_to :Patient
    t.column "height" , :string
    t.column "weight" , :string
    t.column "sbp" , :string
    t.column "dbp" , :string
    t.column "left_eye" , :string
    t.column "right_eye" , :string
    t.column "heart_rate" , :string
    t.column "resp_rate" , :string
    t.column "uncor_l20" , :string
    t.column "uncor_r20" , :string
    t.column "cor_l20" , :string
    t.column "cor_r20" , :string
    t.column "vaccination_status" , :boolean
    t.column "pox_status" , :boolean
    t.column "tb_status" , :boolean
      t.timestamps
    end
  end
end
