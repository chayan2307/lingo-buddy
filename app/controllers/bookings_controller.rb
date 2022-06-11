class BookingsController < ApplicationController
  def index
    @skip_footer = true
    @bookings = Booking.all
    @student_bookings = Booking.where(user_student_id: current_user.id)
    @teacher_bookings = Booking.where(user_teacher_id: current_user.id)
    # if @booking.chatroom.nil?
      @chatroom = Chatroom.new
    # else
    #   @chatroom = @bookings.chatrooms.first
    # end
  end

  def show
    @skip_footer = true
    @booking = Booking.find(params[:id])
  end

  def new
    @skip_footer = true
    @booking = Booking.new
  end

  def create
    @skip_footer = true
    @booking = Booking.new(booking_params)
    @booking.user_student_id = current_user.id
    @booking.user_teacher_id = params[:user_id]
    @booking.save!
    redirect_to bookings_path
  end

  def destroy
    @skip_footer = true
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  def confirm
    @skip_footer = true
    @booking = Booking.find(params[:id])
    @booking.confirmed = true
    @booking.save!
    redirect_to bookings_path
  end

  def my_bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date, :user_student_id, :user_teacher_id, :time)
  end
end
