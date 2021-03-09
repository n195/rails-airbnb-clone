class Piece < ApplicationRecord
  validates :name, :price, :creator, :creation_date, presence: :true

end
