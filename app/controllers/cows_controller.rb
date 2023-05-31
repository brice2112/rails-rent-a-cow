class CowsController < ApplicationController
  before_action :set_cow, only: [:show, :edit, :update, :destroy]

  def index
    @cows = Cow.all
  end

  def show
    # raise
    @booking = Booking.new
  end

  def new
    @cow = Cow.new
  end

  def create
    @cow = Cow.new(cow_params)
    @cow.user = current_user
    if @cow.save!
      flash[:notice] = "Done!"
      redirect_to cow_path(@cow.id)
    else
      render new, status: 422   #Don't have any error message in the browser ?
    end
  end

  def destroy
    @cow.destroy
    redirect_to cows_path
  end

  private

  def set_cow
    @cow = Cow.find(params[:id])
  end

  def cow_params
    params.require(:cow).permit(:name, :race, :gender, :age, :location, :photo)
  end

end
