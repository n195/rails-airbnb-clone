class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :edit, :update, :destroy]


def index
	@booking = Booking.all
end

def new
  @piece = Piece.find(params[:piece_id])
	@booking = Booking.new
end

def create
    @piece = Piece.find(params[:piece_id])
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.piece = @piece

    redirect_to root_path, notice: 'Votres reservation a bien été enregistrée'
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

    params.require(:booking).permit(:date, :checkin, :checkout)

    # params.require(:piece).permit(:name, :price, :creation_date, :description)

  end

  def set_booking
    @booking = Booking.find(params[:id])
  end
end
