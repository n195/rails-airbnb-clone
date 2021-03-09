class AddPieceToBookings < ActiveRecord::Migration[6.0]
  def change
    add_reference :bookings, :piece, null: false, foreign_key: true
  end
end
