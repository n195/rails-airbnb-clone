class AddCreatorToPiece < ActiveRecord::Migration[6.0]
  def change
    add_column :pieces, :creator, :string
  end
end
