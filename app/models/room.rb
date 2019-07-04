class Room < ApplicationRecord
  belongs_to :user
  has_many :room_plants, dependent: :destroy
  has_many :plants, through: :room_plants, dependent: :destroy
end
