class BookingsController < ApplicationController
  before_action :set_flight, only: %i[ new create show destroy ]

  def new
    @flight = Flight.find(params[:flight_id])
    @user = current_user
    @booking = Booking.new
  end

  def create
    @flight = Flight.find(params[:flight_id])
    @user = current_user
    @booking = Booking.new(booking_params)
    @booking.flight = @flight
    @booking.user = @user
    if @booking.save
      redirect_to flight_booking_path(id: @flight)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    # @flight = Flight.find(params[:flight_id])
    # @user = current_user
    # @booking = Booking.new
  end

  def destroy
    @flight = Flight.find(params[:flight_id])
    @flight.destroy
    redirect_to flights_path, status: :see_other
  end

  private

  def set_flight
    @flight = Flight.find(params[:flight_id])
  end

  def booking_params
    params.require(:booking).permit(:name)
  end
end
