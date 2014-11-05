class CreateCities < ActiveRecord::Migration
  def change
    create_table :cities do |t|
    	t.belongs_to :Country
    	t.column "city_name" , :string ,:limit=>100
    	t.column "city_status" , :boolean
      t.timestamps
    end
  end
end
