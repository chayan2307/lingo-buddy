class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end


  def create
    @chatroom = Chatroom.new(chat_params)
  end

  def chat_params
    params.require(:chatroom).permit(:name)
  end

end
