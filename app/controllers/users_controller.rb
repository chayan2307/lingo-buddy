class UsersController < ApplicationController
  def index
    @users = User.all
    # The `geocoded` scope filters only flats with coordinates
    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url("logo.png")
      }
    end
  end

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
  end

  # def new
  #   user = User.new
  # end

  # def create
  #   user = User.new(params[:id])
  #   user.save
  # end

  # def destroy
  # end
end
