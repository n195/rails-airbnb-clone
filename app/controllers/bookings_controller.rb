class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]

def index
	@booking = Booking.all
end

def new
	@booking = Booking.new
end

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

def edit
end

def update
    @booking.update(booking_params)

    redirect_to piece_path(@booking)
end


def destroy
    @booking.destroy

    redirect_to bookings_path
end

private

  def booking_params
    params.require(:booking).permit(:date)
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

end
