class CowsController < ApplicationController
  before_action :set_cow, only: [:show, :edit, :update, :destroy]
  skip_before_action :authenticate_user!, only: [:index, :show]

  def index
    @cows = policy_scope(Cow)
  end

  def show
    @booking = Booking.new
    @reservations = Booking.where(cow: @cow)
    authorize @cow
  end

  def new
    @cow = Cow.new
    authorize @cow
  end

  def create
    @cow = Cow.new(cow_params)
    @cow.user = current_user
    authorize @cow
    if @cow.save
      redirect_to cow_path(@cow.id)
      flash.notice = "Cow succesfully created!"
    else
      flash.alert = "Error in creating cow..."
      render :new, status: :unprocessable_entity                #Don't have any error message in the browser ?
    end
  end

  def destroy
    authorize @cow
    @cow.destroy
    redirect_to cows_path
  end

  def my_cows
    @cows = current_user.cows
  end

  private

  def set_cow
    @cow = Cow.find(params[:id])
  end

  def cow_params
    params.require(:cow).permit(:name, :race, :gender, :age, :location, :photo, :price)
  end

end
