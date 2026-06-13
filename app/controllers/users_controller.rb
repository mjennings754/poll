class UsersController < ApplicationController
  def index
  end

  def new
    @user = User.new
  end

  def edit
  end

  def show
    @user = User.find(params[:id])
  end

  def create
    @user = User.new(user_params)
    if @user.save
      redirect_to @user
    else
      redirect_to new_user_path
    end
  end

  private


  def user_params
    params.expect(user: [:username, :password, :password_confirmation])
  end
end
