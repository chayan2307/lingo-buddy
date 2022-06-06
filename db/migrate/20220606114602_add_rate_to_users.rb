class AddRateToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rate, :integer
  end
end
