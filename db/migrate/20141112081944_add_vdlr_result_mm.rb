class AddVdlrResultMm < ActiveRecord::Migration
  def up
  	add_column("vdlr_results","result_mm",:string)

  end
end
