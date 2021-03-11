class PagesController < ApplicationController


  def home
    @pieces = Piece.all
  end
end
