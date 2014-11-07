class AddForeignKeyToMenuitems < ActiveRecord::Migration
  def change
  	add_reference :menu_items,:menu_heading,:index =>true 
  end
end
