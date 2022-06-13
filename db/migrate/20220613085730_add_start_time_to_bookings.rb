class AddStartTimeToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :start_time, :datetime
    add_column :bookings, :end_time, :datetime
    add_column :bookings, :name, :string
  end
end
