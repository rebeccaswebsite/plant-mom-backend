class UsersController < ApplicationController
    def create
        user = User.new(username: params[:username], password: params[:password])
        
        if user.save
          render json: { username: user.username, token: issue_token({ id: user.id }), user_id: user.id }
        else
          render json: {
            error: "The user was not created. Please try again later.",
            status: 400
            }, status: 400
        end
    end

    def show
        user = User.find_by(id: params[:id])
        if user
            render json: user
        else
            render json: { error: "User not found."}, status: 404
        end
    end

    def login
        user = User.find_by(username: params[:username])
        if user && user.authenticate(params[:password])
          render json: { username: user.username, token: issue_token({ id: user.id }), user_id: user.id }
        else
          render json: { error: "Invalid username/password combination." }, status: 401
        end
    end

    def validate
        user = current_user
        if user
          render json: { username: user.username, token: issue_token({ id: user.id }), user_id: user.id }
        else
          render json: { error: 'User not found.' }, status: 404
        end
      end
    
    def my_rooms
        user = current_user
        if user
          render :json => user.rooms.to_json(:include => {:plants => {:include => {:details => {:except  => [:created_at, :updated_at]}}, :except => [:created_at, :updated_at]}}, :except => [:created_at, :updated_at])
        else
          render json: { error: 'Invalid token.' }, status: 400
        end
    end

    def update
        user = User.find(id: params[:id])
        user.update(user_params)
        render json: user 
    end

    def destroy
        user = User.find_by(id: params[:id])
        user.destroy
    end
end
