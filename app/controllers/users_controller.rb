class UsersController < ApplicationController
  def index
    @users = User.all
    render :index
  end

  def create
    user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password],
      password_confirmation: params[:password_confirmation],
    )
    if user.save
      render json: { message: "User created successfully" }, status: :created
    else
      render json: { errors: user.errors.full_messages }, status: :bad_request
    end
  end

  def show
    @user = User.find_by(id: params[:id])
    render :show
  end

  def update
    @user = User.find_by(id: params[:id])
    @user.update(
      name: params[:name] || @user.name,
      email: params[:email] || @user.email,
      password: params[:password] || @user.password,
      password_confirmation: params[:password] || @user.password,
    )
    render :show
  end

  def destroy
    @user = User.find_by(id: params[:id])
    @user.destroy
    render json: { message: "User deleted successfully" }
  end
end
