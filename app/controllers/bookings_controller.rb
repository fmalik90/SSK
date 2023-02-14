class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @flight = @booking.flight
    if @booking.save
      redirect_to flight_path(@flight)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def show
    @flight = Flight.find(params[:id])
    @user = current_user
    @booking = Booking.new
  end

  def index
    @user = current_user
    @bookings = @user.bookings
  end

  def destroy
    @flight = Flight.find(params[:id])
    @flight.destroy
    redirect_to flights_path, status: :see_other
  end

  private

  def booking_params
    params.require(:booking).permit(:user_id, :flight_id)
  end
end
