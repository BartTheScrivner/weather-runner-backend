class Api::V1::UsersController < ApplicationController
  skip_before_action :logged_in?, only: [:create]
  def create
    user = User.new(user_params)
    if user.save
      UserPreference.new(user_id: user.id)
      render json: {user: UserSerializer.new(user), token: encode_token({user_id: user.id})}
    else
      render json: {errors: "OH NO! > o < "}
    end
  end

  def show
    user = User.find(params[:id])
    render json: {user: UserSerializer.new(user), token: encode_token({user_id: user.id})}
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
    render json: {user: UserSerializer.new(user), token: encode_token({user_id: user.id})}
  end

  private 

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :weekly_run_quota, :bio, :location, :img_url, :zipcode)
  end

end
