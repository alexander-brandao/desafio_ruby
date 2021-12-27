class CreateHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :houses do |t|
      t.string :name
      t.string :address
      t.integer :prince
      t.integer :rooms
      t.integer :bathrooms
      t.string :picture_one
      t.string :picture_two
      t.string :picture_three

      t.timestamps
    end
  end
end
