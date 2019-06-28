class Room < ApplicationRecord
  belongs_to :user
  has_many :plants, through: :roomplants
end
