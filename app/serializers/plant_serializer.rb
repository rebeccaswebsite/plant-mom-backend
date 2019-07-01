class PlantSerializer < ActiveModel::Serializer
    def initialize(plant_object)
        @plant = plant_object
    end

    def to_serialized_hash
        options = {
          include: {
            details: {
              only: [:watering_schedule, :sunlight_exposure, :temperature, :humidity]
            }
          },
          except: [:updated_at, :created_at, :id]
        }
        @plant.to_json()
    end
end