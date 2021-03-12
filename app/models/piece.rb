class Piece < ApplicationRecord
  belongs_to :user, dependent: :destroy
  has_many :bookings
  validates :name, :price, :creation_date, presence: true
end
