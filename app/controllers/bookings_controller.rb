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
    if @booking.cost? <= current_user.credits && @booking.save!
      redirect_to bookings_path
    else
      render :new, locals: { :"@space" => @booking.space }, status: :unprocessable_entity
    end
  end

  def update
    if @booking.status_pending?
      if @booking.update(booking_params)
        BookingChannel.broadcast_to(
          @booking,
          @booking.status
        )
        update_credits(@booking, @booking.user, @booking.space.user) if @booking.status_accepted?
        # In case the order has already been accepted or declined
      else
        render :new, status: :unprocessable_entity
      end
    else
      if @booking.update(booking_params)
        BookingChannel.broadcast_to(
          @booking,
          @booking.status
        )
        update_credits(@booking, @booking.space.user, @booking.user) if @booking.status_pending?
      else
        render :new, status: :unprocessable_entity
      end
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

  def update_credits(booking, debitor, creditor)
    debitor.credits -= booking.cost?
    debitor.save!
    creditor.credits += booking.cost?
    creditor.save!
  end
end
