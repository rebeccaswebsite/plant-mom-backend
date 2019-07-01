class CreateRoomPlants < ActiveRecord::Migration[5.2]
  def change
    create_table :room_plants do |t|
      t.integer :room_id
      t.integer :plant_id

      t.timestamps
    end

    add_foreign_key :room_plants, :rooms, column: :room_id
    add_index :room_plants, :room_id

    add_foreign_key :room_plants, :plants, column: :plant_id
    add_index :room_plants, :plant_id
  end
end
