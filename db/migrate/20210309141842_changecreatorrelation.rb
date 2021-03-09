class Changecreatorrelation < ActiveRecord::Migration[6.0]
  def change
    remove_column :pieces, :creator
    add_reference :pieces, :user, null: false, foreign_key: true
  end
end
