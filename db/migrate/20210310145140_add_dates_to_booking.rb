class AddDatesToBookings < ActiveRecord::Migration[6.0]
  def change
    add_column :bookings, :checkin, :integer
    add_column :bookings, :checkout, :integer
  end
end
