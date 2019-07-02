class DetailSerializer < ActiveModel::Serializer
    attributes :watering_schedule, :sunlight_exposure, :temperature, :humidity
    belongs_to :plant
end