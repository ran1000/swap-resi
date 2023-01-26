class BookingsController < ApplicationController
  before_action :set_booking, only: %i[update destroy]
  def index
    @bookings = Booking.all
    @bookings = policy_scope(Booking)
  end

  def host_index
    @host_spaces = current_user.spaces
    @bookings = Booking.where(space_id: current_user.spaces)
    skip_authorization
  end

  def new
    @space = Space.find(params[:space_id])
    @booking = Booking.new
    authorize @space
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.space = Space.find(params[:space_id])
    @booking.user = current_user
    authorize @booking
    if @booking.save!
      booking_days = (@booking.end_date - @booking.start_date).to_i
      current_user.credits -= (@booking.space.daily_cost * booking_days)
      current_user.save!
      redirect_to bookings_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    if @booking.update(booking_params)
      # Here I should broadcast_to the BookingChannel
      BookingChannel.broadcast_to(
        @booking,
        @booking.status
        # render_to_string(host_index_bookings_path, @booking)
      )
      # head :ok
    else
      # unprocessable entry
    end
    authorize @booking
  end

  def destroy
    authorize @booking
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:message, :start_date, :end_date, :status)
  end
end
