class AddColoumnToCows < ActiveRecord::Migration[7.0]
  def change
    add_column :cows, :address, :string
  end
end
