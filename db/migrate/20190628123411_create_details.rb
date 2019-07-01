class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.integer :plant_id
      t.string :watering_schedule
      t.string :sunlight_exposure
      t.integer :temperature
      t.integer :humidity

      t.timestamps
    end

    add_foreign_key :details, :plants, column: :plant_id
    add_index :details, :plant_id
  end
end
