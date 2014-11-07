class CreateMenuHeadings < ActiveRecord::Migration
  def change
    create_table :menu_headings do |t|
    	t.column "heading_name" ,:string,:limit=>100
    	t.column "heading_status",:integer
      t.timestamps
    end
  end
end
