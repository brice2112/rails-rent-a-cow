class BookingsController < ApplicationController
  before_action :set_booking, only: [:show, :update, :destroy]

  def create
    @booking = Booking.new(booking_params)
    @cow = Cow.find(params[:cow_id])
    @booking.cow_id = @cow.id
    @booking.user_id = current_user.id
    authorize @booking
    if @booking.save!
      flash[:notice] = "Done!"
      redirect_to cow_path(@cow.id)
    else
      render "cows/show", status: :unprocessable_entity
    end
  end

  def show
    authorize @booking
  end

  def update
    authorize @booking
    @booking.update(booking_params)
    redirect_to booking_path(@booking)
  end

  def delete
    authorize @booking
    @booking.destroy
  end

  def my_reservations
    authorize @booking
    @bookings = current_user.bookings
  end

  def approve
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(validated: "accepted")
      redirect_to profile_path, notice: "accepté"
    else
      redirect_to profile_path, notice: "pas accepté"
    end
  end

  def decline
    @booking = Booking.find(params[:id])
    authorize @booking
    if @booking.update(validated: "rejected")
      redirect_to profile_path, notice: "refusé "
    else
      redirect_to profile_path, notice: "pas refusé"
    end
  end

  private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:date, :user_id, :cow_id, :validated)
  end

end
