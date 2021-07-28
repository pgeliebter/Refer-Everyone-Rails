class ChangeRefferedByIDtoRefferedByInConversions < ActiveRecord::Migration[6.1]
  def change
    rename_column :conversions, :reffered_by_id, :reffered_by
  end
end
