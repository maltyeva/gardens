class PlantsController < ApplicationController

  before_action :garden_set

  def new
    @plant = Plant.new
  end

  def create
    @plant = Plant.new(plant_params)
    @plant.garden = @garden
    if @plant.save
      redirect_to @garden
    else
      render :new
    end
  end

  private

  def garden_set
    @garden = Garden.find(params[:garden_id])
  end

  def plant_params
    params.require(:plant).permit(:name, :color, :size)
  end

end
