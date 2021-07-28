class CreateConversions < ActiveRecord::Migration[6.1]
  def change
    create_table :conversions do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.string :phone
      t.integer :campaign_id
      t.integer :reffered_by_id

      t.timestamps
    end
  end
end
