class Booking < ApplicationRecord
  belongs_to :user
  belongs_to :piece
  validates :date, presence: :true
end
