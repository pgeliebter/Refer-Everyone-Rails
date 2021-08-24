class AddImageToCampaign < ActiveRecord::Migration[6.1]
  def change
    add_column :campaigns, :image, :string
  end
end
