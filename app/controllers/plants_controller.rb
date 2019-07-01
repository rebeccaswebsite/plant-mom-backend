class PlantsController < ApplicationController
    def index
        plants = Plant.all
        render json: PlantSerializer.new(plants).to_serialized_hash
    end


    def show
        plant = Plant.find_by(id: params[:id])
        render json: PlantSerializer.new(plant).to_serialized_hash
    end
 end
 