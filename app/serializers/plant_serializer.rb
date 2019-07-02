class PlantSerializer < ActiveModel::Serializer
  attributes :id, :common_name, :img
  has_many :details
end