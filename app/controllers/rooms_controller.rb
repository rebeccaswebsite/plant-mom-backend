class RoomsController < ApplicationController
    def show
        @room = Room.find(params[:id])
        if @room
            render :json => @room.to_json(:include => {:plants => {:include => {:details => {:except  => [:created_at, :updated_at]}}, :except => [:created_at, :updated_at]}}, :except => [:created_at, :updated_at])
        else
          render json: { error: 'Cannot find room' }, status: 404
        end
      end

    def create
        room = Room.new(user_id: room_params[:user_id], name: room_params[:name])
        
        if room.save
            render json: room
        else
           render json: {
             error: "The room was not created. Please try again later.",
             status: 400
             }, status: 400
        end
    end

    def update
        room = room.find_by(id: params[:id])
        room.update(room_params)
        render json: room
    end

    def destroy
        room = Room.find_by(id: params[:id])
        room.destroy
    end

    private

    def room_params
        params.require(:room).permit(:user_id, :name)
    end
end
 