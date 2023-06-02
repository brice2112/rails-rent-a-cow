class CowsController < ApplicationController
  before_action :set_cow, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cows = policy_scope(Cow)
    @markers = @cows.geocoded.map do |cow|
      {
        lat: cow.latitude,
        lng: cow.longitude,
        info_window: render_to_string(partial: "cows/info_window", locals: {cow: cow}),
        marker_html: render_to_string(partial: "cows/marker", locals: {cow: cow})
      }
    end
  end

  def show
    @booking = Booking.new
    @reservations = Booking.where(cow: set_cow)
  end

  def new
    @cow = Cow.new
    authorize @cow
  end

  def create
    @cow = Cow.new(cow_params)
    authorize @cow
    @cow.user = current_user
    if @cow.save!
      redirect_to cow_path(@cow.id)
      flash.notice = "Cow succesfully created!"
    else
      flash.alert = "Error in creating cow..."
      render :new, status: :unprocessable_entity                #Don't have any error message in the browser ?
    end
  end

  def destroy
    @cow.destroy
    redirect_to cows_path
  end

  def my_cows
    @cows = current_user.cows
  end

  private

  def set_cow
    @cow = Cow.find(params[:id])
    authorize @cow
  end

  def cow_params
    params.require(:cow).permit(:name, :race, :gender, :age, :location, :photo, :price, :adress)
  end
end
