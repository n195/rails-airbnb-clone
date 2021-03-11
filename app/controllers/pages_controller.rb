class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home
    @pieces = Piece.all
  end
end
