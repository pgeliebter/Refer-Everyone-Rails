class ChangeRefferredByToReferredBy < ActiveRecord::Migration[6.1]
  def change
    rename_column :conversions, :reffered_by, :referred_by
  end
end
