class UsersController < ApplicationController
  def show
    @user = current_user
    @booked_pieces = current_user.bookings
    @pieces = current_user.pieces
    @bookings_by_other_user = Booking.where(piece: @pieces)
  end
end
