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

  def new
    @flight = Flight.new
  end

  def create
    @flight = Flight.new(flight_params)
    if @flight.save
      redirect_to flights_path, :flash => { :alert => "Flight created!" }
    else
      render :new, status: :unprocessable_entity
    end
  end

  def update
    @flight = Flight.find(params[:id])
    if @flight.update(flight_params)
      redirect_to flights_path, :flash => { :alert => "Flight edited!" }
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def flight_params
    params.require(:flight).permit(:destination, :description, :date, :time, :duration, :price, :photo)
  end
end
