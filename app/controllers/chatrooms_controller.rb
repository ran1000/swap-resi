class ChatroomsController < ApplicationController
  def index
    @chatrooms = Chatroom.where(current_user.bookings.include?(:booking_id)).or(Chatroom.where(current_user.spaces.map{|space| space.bookings.map{|booking| booking.id}}.flatten.include?(:booking_id)))
    @chatrooms = policy_scope(@chatrooms)
  end

  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
    authorize @chatroom
  end
end
