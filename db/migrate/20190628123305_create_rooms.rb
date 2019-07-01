class CreateRooms < ActiveRecord::Migration[5.2]
  def change
    create_table :rooms do |t|
      t.integer :user_id
      t.string :name

      t.timestamps
    end
    
    add_foreign_key :rooms, :users, column: :user_id
    add_index :rooms, :user_id
  end
end
