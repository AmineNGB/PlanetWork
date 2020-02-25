class ReservationsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_planet, only: [:edit, :update, :new, :user_show]

  def user_show
    @reservations = Reservation.where(user: current_user)
  end

  def edit
  end

  def update
    @planet.update(planet_params)

    redirect_to planet_path(@planet)
  end

  private

  def planet_params
    params.require(:planet).permit(:name, :description, :price, :photo)
  end

  def set_planet
    @planet = Planet.find(params[:id])
  end
end
