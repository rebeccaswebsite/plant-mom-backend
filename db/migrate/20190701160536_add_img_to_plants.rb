class AddImgToPlants < ActiveRecord::Migration[5.2]
  def change
    add_column :plants, :img, :string
  end
end
