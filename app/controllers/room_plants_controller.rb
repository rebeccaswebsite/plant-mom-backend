class RoomPlantsController < ApplicationController
    def index
        room_plants = RoomPlant.all
        if room_plants
          render json: room_plants
        else
          render json: { error: 'Cannot find room/plant appearance' }, status: 404
        end
    end

    def destroy
        room_plant = RoomPlant.find_by(id: params[:id])
        room_plant.destroy
    end
end