class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.user2_id = params[:user_id]
    @booking.save!
    # redirect_to my_bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    # redirect_to my_bookings_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_id, :user2_id)
  end
end
