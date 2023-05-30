class CowsController < ApplicationController

  def show
    @cow = Cow.find(params[:id])
    @booking = Booking.new
  end

  def index
    @cows = Cow.all
  end

end
