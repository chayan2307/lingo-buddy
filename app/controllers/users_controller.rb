class UsersController < ApplicationController
  def index
    # The `geocoded` scope filters only flats with coordinates
    ## working search
    # if params[:query].present?
    #   sql_query = <<~SQL
    #   users.location ILIKE :query
    #   OR users.languages ILIKE :query
    #   OR users.first_name ILIKE :query
    #   OR users.last_name ILIKE :query
    # SQL
    #   @users = User.where(sql_query, query: "%#{params[:query]}%")
    # else
    #   @users = User.all
    # end
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
        image_url: helpers.asset_url('logo.png')
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
