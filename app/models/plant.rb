class Plant < ApplicationRecord
    has_many :rooms, through: :roomplants
    has_many :details
end
