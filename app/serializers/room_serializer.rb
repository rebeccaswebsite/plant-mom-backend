class RoomSerializer < ActiveModel::Serializer
    attributes :name
    has_many :plants
end