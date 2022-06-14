class AddRateToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :rate, :integer
    add_monetize :users, :price, currency: { present: false }
  end
end
