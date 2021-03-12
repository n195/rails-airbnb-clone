class Booking < ApplicationRecord
  belongs_to :user, dependent: :destroy
  belongs_to :piece, dependent: :destroy

end
