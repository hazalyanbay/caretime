class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @ticket = @chatroom.ticket
    @message = Message.new
  end
end
