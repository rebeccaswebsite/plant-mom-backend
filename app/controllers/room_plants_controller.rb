class RoomPlantsController < ApplicationController
    def index
        room_plants = RoomPlant.all
        if room_plants
          render json: room_plants.to_json( :include => [:plant] )
        else
          render json: { error: 'Cannot find room/plant appearance' }, status: 404
        end
    end

    def create
        roomplant = RoomPlant.new(room_id: params[:room_id], plant_id: params[:plant_id])
        
        if roomplant.save
            render json: roomplant
        else
          render json: {
            error: "A plant/room instance was not created. Please try again later.",
            status: 400
            }, status: 400
        end
    end

    def destroy
        room_plant = RoomPlant.find_by(id: params[:id])
        room_plant.destroy
    end
end