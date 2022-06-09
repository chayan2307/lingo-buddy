class ChatroomsController < ApplicationController
  def show
    @booking = Booking.find(params[:booking_id])
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end


  def create
    @booking = Booking.find(params[:booking_id])
    @chatroom = Chatroom.new
    @chatroom.booking = @booking
    if @chatroom.save
      redirect_to booking_chatroom_path(@booking, @chatroom)
    else
      raise
    end
  end

  def chat_params
    params.require(:chatroom).permit(:name)
  end

end
