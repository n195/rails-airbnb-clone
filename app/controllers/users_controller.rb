class UsersController < ApplicationController
  def show
    @user = current_user
    @bookings = current_user.bookings
    @pieces = current_user.pieces
  end
end
