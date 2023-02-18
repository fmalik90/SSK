class BookingsController < ApplicationController
  before_action :set_flight, only: %i[ new create show ]

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.flight = @flight
    @booking.user = current_user
    if @booking.save
      redirect_to flight_booking_path(@flight, @booking)
    else
      render "flights/show", status: :unprocessable_entity
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to flights_path, status: :see_other
  end

  private

  def set_flight
    @flight = Flight.find(params[:flight_id])
  end

  def booking_params
    params.require(:booking).permit(:name, :user_id, :flight_id, :seat)
  end
end
