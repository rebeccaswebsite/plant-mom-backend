class PlantSerializer < ActiveModel::Serializer
  attributes :common_name, :img
  has_many :details
end