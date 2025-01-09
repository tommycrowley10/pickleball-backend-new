class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def create
    @user = User.create(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      username: params[:username],
      password: params[:password],
    )
    render :show
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end
end
