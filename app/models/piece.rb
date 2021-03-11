class Piece < ApplicationRecord

  belongs_to :user, dependent: :destroy

  validates :name, :price, :creation_date, presence: :true
end
