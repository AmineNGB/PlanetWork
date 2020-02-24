class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_planet, only: [:show, :edit, :update, :destroy]

  def index
    @planets = Planet.all
  end

  def show
    @planet = Planet.find(params[:id])
  end

  def new
    @planet = Planet.new
  end

  def create
    Planet.create!(planet_params)
    redirect_to planets_path
  end

  def edit
  end

  def update
    @planet.update(planet_params)

    redirect_to planets_path(@planet)
  end

  def destroy
    @planet.destroy
    redirect_to planets_path
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :description, :price)
  end

  def set_planet
    @planet = Planet.find(params[:id])
  end
end
