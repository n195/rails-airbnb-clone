class PiecesController < ApplicationController
  before_action :set_piece, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, only: [:index, :show]

  def index
    @user = current_user
    @pieces = current_user.pieces
  end

  def show
  end

  def new
    @piece = Piece.new
  end

  # def create
  #   @piece = Piece.new(params[:piece])
  #   @piece.save

  #   redirect_to piece_path(@piece)
  # end

  def create
    @piece = Piece.new(piece_params)
    @piece.user = current_user

    if @piece.save
      flash[:success] = "piece successfully created"
    else
      flash[:error] = "Something went wrong"
      render 'new'
    end
    redirect_to piece_path(@piece)
  end

  def edit
  end

  def update
    @piece.update(piece_params)

    redirect_to piece_path(@piece)
  end

  def destroy
    @piece.destroy
    redirect_to root_path
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :price, :creation_date, :description, :photo_url)
  end

  def set_piece
    @piece = Piece.find(params[:id])
  end
end
