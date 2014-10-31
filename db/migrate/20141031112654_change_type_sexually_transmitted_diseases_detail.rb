class ChangeTypeSexuallyTransmittedDiseasesDetail < ActiveRecord::Migration
  def up
  	change_column("questions","sexually_transmitted_diseases_detail",:string)
  end
end
