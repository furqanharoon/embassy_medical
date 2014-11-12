class AddReferencesToVdrlTable < ActiveRecord::Migration
  def change
    add_reference :vdlrs, :patients, index: true
    add_reference :vdlrs, :exam_patients, index: true
  end
end
