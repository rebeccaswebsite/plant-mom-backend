class CreateSuggestions < ActiveRecord::Migration[5.2]
  def change
    create_table :suggestions do |t|
      t.integer :plant_id
      t.string :suggestion

      t.timestamps
    end
    add_foreign_key :suggestions, :plants, column: :plant_id
    add_index :suggestions, :plant_id
  end
end
