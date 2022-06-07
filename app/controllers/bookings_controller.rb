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
    @booking.user_student_id = current_user.id
    @booking.user_teacher_id = params[:user_id]
    @booking.save!
    redirect_to my_bookings_path
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to my_bookings_path, status: :see_other
  end

  def confirm
    @booking = Booking.find(params[:id])
    @booking.confirmed = true
    @booking.save
    redirect_to my_bookings_path
  end

  def my_bookings
    @student_bookings = Booking.where(user_student_id: current_user.id)
    @teacher_bookings = Booking.where(user_teacher_id: current_user.id)
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_student_id, :user_teacher_id, :time)
  end
end
