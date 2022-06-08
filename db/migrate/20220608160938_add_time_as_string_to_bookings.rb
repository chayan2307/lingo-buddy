class AddTimeAsStringToBookings < ActiveRecord::Migration[7.0]
  def change
    add_column :bookings, :time, :string
  end
end
