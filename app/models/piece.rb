class Piece < ApplicationRecord
<<<<<<< HEAD
  belongs_to :user
=======
  belongs_to :user, dependent: :destroy
>>>>>>> 16b571688092ea6d1b92da28d7ea1a492c0213bf
  validates :name, :price, :creation_date, presence: :true
end
