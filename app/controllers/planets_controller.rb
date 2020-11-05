class PlanetsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_planet, only: [:show, :edit, :update, :destroy]

  def index
    @planets = Planet.all
     if params[:query].present?
      @planets = Planet.search_by_name_and_description(params[:query])

      # if @planets.empty?

      # else
      # @planets = Planet.search_by_name_and_description(params[:query])
      # end
    else
     @planets = Planet.all
    end
  end

  def show
    @reservation = Reservation.new

  end

  def new
    @planet = Planet.new
  end

  def create
    @planet = Planet.new(planet_params)
    @planet.user = current_user
    @planet.save!
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
    redirect_to profile_path
  end

  def planet_params
    params.require(:planet).permit(:name, :description, :price, photos: [])
  end

  def set_planet
    @planet = Planet.find(params[:id])
  end
end
