class PlantsController < ApplicationController
    def index
        @plants = Plant.all
        if @plants
          render json: @plants, root: "plants", adapter: :json,
          each_serializer: PlantSerializer
        else
          render json: { error: 'Cannot find plant' }, status: 404
        end
      end
    
      def show
        @plant = Plant.find(params[:id])
        if @plant
          render json: @plant, include: [:details]
        else
          render json: { error: 'Cannot find plant' }, status: 404
        end
      end
 end
 