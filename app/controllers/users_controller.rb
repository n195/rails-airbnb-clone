class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  def show
    @user = current_user
    @booked_pieces = current_user.bookings
    @pieces = current_user.pieces
    @bookings_by_other_user = Booking.where(piece: @pieces)
  end

def new
	@user = User.new
end

def create
    @user = User.new(User_params)
    @user.user = current_user

    if @user.save
        flash[:success] = "user successfully created"
        redirect_to user_path(@user)
    else
        flash[:error] = "Something went wrong"
        render 'new'
    end
end

def update
    @user.update(user_params)

    redirect_to user_path(@user)
end

def destroy
    @user.destroy

    redirect_to user_path
end

private

  def user_params
    params.require(:user).permit(:name, :email)
  end

  def set_piece
    @user = User.find(params[:id])
  end

>>>>>>> master
end
