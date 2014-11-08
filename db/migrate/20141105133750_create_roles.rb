class CreateRoles < ActiveRecord::Migration
  def change
    create_table :roles do |t|
    	t.column "role_name",:string,:limit=>100
      t.timestamps
    end
  end
end
