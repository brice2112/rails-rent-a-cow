class BookingsController < ApplicationController

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

  end

  def delete

  end

  def my_reservations
    @bookings = current_user.bookings
  end

  private

  def booking_params
    params.require(:booking).permit(:date, :user_id, :cow_id)
  end



end
