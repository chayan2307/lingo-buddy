class UsersController < ApplicationController
  def show
    user = User.find(params[:id])
  end

  def index
    users = User.all
  end

  def new
    user = User.new
  end

  def create
    user = User.new(params[:id])
    user.save
  end

  def destroy
  end
end
