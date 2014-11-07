class CreateRoleRelations < ActiveRecord::Migration
  def change
    create_table :role_relations do |t|
      t.references :registration, index: true
      t.references :role, index: true
      t.references :menuitems, index: true
      t.column "extended" ,:boolean
      t.timestamps
    end
  end
end
