class RidesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:new]

  def index
  end

  def show
  end

  def new
    @ride = Ride.new
  end

  def create
    @ride = Ride.new(ride_params)
    if @ride.save
      redirect_to ride_path(@ride)
    else
      render :new
    end
  end

  private

  def ride_params
    params.require(:ride).permit(:from, :to)
  end
end

