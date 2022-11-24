class BookingController < ApplicationController
  def index
    @bookings = Booking.all
    @bookings = policy_scope(Booking)
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
      redirect_to space_booking_index_path
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:message, :start_date, :end_date)
  end
end
