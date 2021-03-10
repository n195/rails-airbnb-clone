class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    if @booking.save
        flash[:success] = "booking successfully created"
        redirect_to booking_path(@booking)
    else
        flash[:error] = "Something went wrong"
        render 'new'
    end

end


def update
    @booking.update(piece_params)

    redirect_to piece_path(@booking)
end


def destroy
    @booking.destroy

    redirect_to bookings_path
end

private

  def booking_params
    params.require(:piece).permit(:name, :price, :creation_date, :description)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end


end
