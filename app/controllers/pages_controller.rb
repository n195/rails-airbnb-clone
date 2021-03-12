class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: :home

  def home  
    if params[:query].present?
      @pieces = Piece.where(name: params[:query])
    else
      @pieces = Piece.all
    end
  end
end
