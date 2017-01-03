class TanksController < ApplicationController
  def index
    @tanks = Tank.all
  end

  def new
    @tank = Tank.new
  end

  def create
    @tank = Tank.new(tank_params)
    if @tank.save
      redirect_to @tank
    else
      flash[:alert] = 'É necessário preencher todos os campos!'
      render :new
    end
  end

  def edit
    @tank = Tank.find(params[:id])
  end

  def update
    @tank = Tank.find(params[:id])
    if @tank.update(tank_params)
      redirect_to @tank
    else
      flash[:alert] = 'É necessário preencher todos os campos!'
      render :edit
    end
  end

  def show
    @tank = Tank.find(params[:id])
  end

  private

  def tank_params
    params.require(:tank).permit(:car_id, :distance, :fillvol, :price, :fuel, :way, :startdate, :finaldate, :obs)
  end

end
