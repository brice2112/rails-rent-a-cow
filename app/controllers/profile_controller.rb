class ProfileController < ApplicationController

  def show
    @user = current_user
    @cows = current_user.cows
    @bookings = current_user.bookings
    #@bookings = Booking.where(cow: @cows)
    authorize @user
    authorize @cows
    authorize @bookings
  end

end
