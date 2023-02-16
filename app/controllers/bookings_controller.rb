class BookingsController < ApplicationController
  before_action :set_flight, only: %i[ new create show ]
  before_action :set_user, only: %i[ new create ]

  def new
    @booking = Booking.new
    # @booking.flight = @flight
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flight = @flight
    @booking.user = current_user
    if @booking.save
      redirect_to flight_booking_path(id: @flight)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
  end

  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def destroy
    @booking.destroy
    redirect_to flights_path, status: :see_other
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def set_user
    @user = current_user
  end

  def set_flight
    @flight = Flight.find(params[:flight_id])
  end

  def booking_params
    params.require(:booking).permit(:name, :flight_id, :seat)
  end
end
