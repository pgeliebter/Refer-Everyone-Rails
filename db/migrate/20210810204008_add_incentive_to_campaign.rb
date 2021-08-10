class AddIncentiveToCampaign < ActiveRecord::Migration[6.1]
  def change
    add_column :campaigns, :incentive, :decimal, precision: 9, scale: 2
  end
end
