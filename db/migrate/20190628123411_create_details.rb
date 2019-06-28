class CreateDetails < ActiveRecord::Migration[5.2]
  def change
    create_table :details do |t|
      t.references :plant, foreign_key: true
      t.string :watering_schedule
      t.string :sunlight_exposure
      t.integer :temperature
      t.integer :humidity

      t.timestamps
    end
  end
end
