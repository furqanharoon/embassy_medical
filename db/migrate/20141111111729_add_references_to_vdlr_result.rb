class AddReferencesToVdlrResult < ActiveRecord::Migration
  def change
    add_reference :vdlr_results, :patients, index: true
  end
end
