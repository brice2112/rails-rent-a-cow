class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  def create
    @booking = Booking.new(booking_params)
    @cow = Cow.find(params[:cow_id])
    @booking.cow_id = @cow.id
    @booking.user_id = current_user.id
    if @booking.save!
      flash[:notice] = "Done!"
      redirect_to cow_path(@cow.id)
    else
      render "cows/show", status: :unprocessable_entity
    end
  end

  def show
  end

  def update
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def delete
    @booking.destroy
  end

  def my_reservations
    @bookings = current_user.bookings
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :user_id, :cow_id, :validated)
  end

end
