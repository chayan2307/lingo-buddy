class RemoveStartDateFromBookings < ActiveRecord::Migration[7.0]
  def change
    remove_column :bookings, :start_date, :string
    remove_column :bookings, :end_date, :string
    # remove_column :bookings, :time, :string
  end
end
