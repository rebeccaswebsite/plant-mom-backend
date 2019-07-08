class CreateNotes < ActiveRecord::Migration[5.2]
  def change
    create_table :notes do |t|
      t.integer :room_plant_id
      t.text :content

      t.timestamps
    end
  end
end
