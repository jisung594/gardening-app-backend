class Api::V1::PlantsController < ApplicationController
  def index
    @plants = Plant.all
    render json: @plants
  end

  def show
   @plant = Plant.find(params[:id])
   render json: @plant
  end


  private

  def plant_params
    params.require(:plant).permit(
      :name,
      :scientific_name,
      :family_name,
      :img,
      :flower_color,
      :foliage_texture,
      :foliage_color,
      :growth_period,
      :bloom_period,
      :shade_tolerance,
      :temperature_minimum,
      :ph_minimum,
      :ph_maximum,
      :drought_tolerance,
      :duration,
      :mature_height,
      :growability,
      :plant_type
    )
  end
end
