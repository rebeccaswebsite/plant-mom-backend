class RoomPlant < ApplicationRecord
  belongs_to :room
  belongs_to :plant
  has_many :notes
end
