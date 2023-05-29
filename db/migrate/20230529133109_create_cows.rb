class CreateCows < ActiveRecord::Migration[7.0]
  def change
    create_table :cows do |t|
      t.string :name
      t.string :race
      t.string :gender
      t.integer :age
      t.string :location
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
