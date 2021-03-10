class AddPhotoToPiece < ActiveRecord::Migration[6.0]
  def change
    add_column :pieces, :photo_url, :string
  end
end
