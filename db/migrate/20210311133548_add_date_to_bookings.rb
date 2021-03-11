class AddDateToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :checkin, :date
    add_column :bookings, :checkout, :date
  end
end
