class CarsController < ApplicationController

  def index
  end

  def new
    @car = Car.new
  end

  def create
    @car = Car.new(car_params)
    if @car.save
      redirect_to @car
    end
  end

  def show
    @car = Car.find(params[:id])
  end

  private
  def car_params
    params.require(:car).permit(:brand, :name, :version, :yearmodel, :tankvol)
  end


end
