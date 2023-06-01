class AddFieldsToCow < ActiveRecord::Migration[7.0]
  def change
    add_column :cows, :price, :integer
    add_column :cows, :description, :text
    add_column :cows, :rating, :integer
  end
end
