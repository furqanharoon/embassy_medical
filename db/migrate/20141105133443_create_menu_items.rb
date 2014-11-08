class CreateMenuItems < ActiveRecord::Migration
  def change
    create_table :menu_items do |t|
    	t.column "action" ,:string,:limit=>50
    	t.column "controller",:string,:limit=>50
    	t.column "lable",:string,:limit=>100
    	t.column "is_menu",:boolean
      t.timestamps
    end
  end

end
