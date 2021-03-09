class Piece < ApplicationRecord
  belongs_to :user
  validates :name, :price, :creation_date, presence: :true
end
