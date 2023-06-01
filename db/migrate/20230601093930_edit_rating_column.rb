class EditRatingColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :cows, :rating, :float
  end
end
