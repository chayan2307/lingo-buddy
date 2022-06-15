class RemovePriceCentsFromUsers < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :price_cents, :integer
  end
end
