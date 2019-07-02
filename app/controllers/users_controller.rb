class UsersController < ApplicationController
    def create 
        @user = User.create(user_params)
        if @user.valid?
            render json: { user: UserSerializer.new(@user) }, status: :created
        else
            render json: { error: 'Failed to create user' }, status: :not_acceptable
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

   private
   def user_params
    params.require(:user).permit(:username, :password)
   end 
end
