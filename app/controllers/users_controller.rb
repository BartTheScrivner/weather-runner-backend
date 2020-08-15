class UsersController < ApplicationController

  def create
    user = 
  end

  def show
    user = 
  end

  def update
    user = 
  end

  def destroy
    user = 
  end

  private 

  def user_params
    params.require(:user)
    .permit(:name, :email, :password, :password_confirmation, :weekly_run_quota, :location)
  end
end
