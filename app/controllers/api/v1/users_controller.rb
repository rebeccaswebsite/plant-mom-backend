class Api::V1::UsersController < ApplicationController
   skip_before_action :authorized, only: [:create]

   def profile
        render json: { user: UserSerializer.new(current_user) }, status: :accepted
    end 

    def create 
        @user = User.create(user_params)
        if @user.valid?
            render json: { user: UserSerializer.new(@user) }, status: :created
        else
            render json: { error: 'failed to create user' }, status: :not_acceptable
        end
    end

    def show
        user = User.find_by(id: params[:id])
        render json: UserSerializer.new(user)
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
