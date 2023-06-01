class ProfileController < ApplicationController

  def show
    @user = current_user
    @cows = current_user.cows
    @bookings = current_user.bookings
    authorize @user
    authorize @cows
    authorize @bookings
  end

end
