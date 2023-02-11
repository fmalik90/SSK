class BookingsController < ApplicationController
  def new
    @booking = Booking.new
  end

  def create
    # edit user stories
    @booking = Booking.new(booking_params)
    @booking.flight = @flight
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

  private

  def booking_params
    params.require(:booking).permit(:user_id, :flight_id)
  end
end
