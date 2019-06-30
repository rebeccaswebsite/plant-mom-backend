class Api::V1::UsersController < ApplicationController
   skip_before_action :authorized, only: [:create]

   def create
    @user = User.create(user_params)
    if @user.valid?
        @token = encode_token(user_id: @user.id)
        render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
    else 
        render json: { error: 'failed to create user' }, status: :not_acceptable
    end
   end

   def show
        user = User.find_by(id: params[:id])
        render json: user
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
