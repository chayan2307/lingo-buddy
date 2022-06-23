class UsersController < ApplicationController
  def index

    if params[:query].present?
      @users = User.search_by_location_and_languages(params[:query])
    else
      @users = User.all
    end

    @markers = @users.geocoded.map do |user|
      {
        lat: user.latitude,
        lng: user.longitude,
        info_window: render_to_string(partial: "info_window", locals: { user: user }),
        image_url: helpers.asset_url("icon10.png")
      }
    end
  end

  def show
    @user = User.find(params[:id])
    @booking = Booking.new
    @review = Review.new
  end

  def edit
    @user = User.find(params[:id])
  end

  def confirm
    @user = current_user
    @user.teacher = true
    @user.save
  end

  def update
    @user = current_user
    @user.teacher = true
    if @user.update(user_params)
      redirect_to user_path(@user)
    else
      render "edit", status: :unprocessable_entity
    end
  end

  private
  def user_params
    params.require(:user).permit(:languages, :location, :rate, :teacher, :photo_url, :photo, :bio)
  end
end
