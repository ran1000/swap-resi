class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where(user_id: current_user)
    @chatrooms = policy_scope(@chatrooms)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
  end
end
