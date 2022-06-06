class CreateBookings < ActiveRecord::Migration[7.0]
  def change
    create_table :bookings do |t|
      t.integer :user2_id
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
