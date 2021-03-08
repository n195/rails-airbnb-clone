class CreatePieces < ActiveRecord::Migration[6.0]
  def change
    create_table :pieces do |t|
      t.string :name
      t.integer :price
      t.string :creator
      t.integer :creation_date
      t.text :description

      t.timestamps
    end
  end
end
