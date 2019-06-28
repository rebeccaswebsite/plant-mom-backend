class CreateRoomPlants < ActiveRecord::Migration[5.2]
  def change
    create_table :room_plants do |t|
      t.references :room, foreign_key: true
      t.references :plant, foreign_key: true

      t.timestamps
    end
  end
end
