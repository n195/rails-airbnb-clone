class PiecesController < ApplicationController
  before_action :set_piece, only: [:show, :edit, :update, :destroy]

  def index
    @piece = Piece.all
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
      if @piece.save
        flash[:success] = "piece successfully created"
        redirect_to @piece_path
      else
        flash[:error] = "Something went wrong"
        render 'new'
      end
  end

  def edit
  end

  def update
    @piece.update(piece_params)

    redirect_to piece_path(@piece)
  end

  def destroy
    @piece.destroy

    redirect_to pieces_path
  end

  private

  def piece_params
    params.require(:piece).permit(:name, :price, :creation_date, :description)
  end

  def set_piece
    @piece = Piece.find(params[:id])
  end
end
