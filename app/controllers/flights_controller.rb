class FlightsController < ApplicationController
  def index
    @flights = Flight.all
    @user = current_user
  end

  def show
    @user = current_user
    @flight = Flight.find(params[:id])
    @booking = Booking.new
  end
end
