class ReservationsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]

  def index
    @reservations = Reservation.all
  end

  def new
    @planet = Planet.find(params[:planet_id])
    @reservation = Reservation.new
  end

  def edit
      @reservation = Reservation.find(params[:id])
  end

  def update
    @reservation.update(reservation_params)

    redirect_to reservation_path(@reservation)
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @planet = Planet.find(params[:planet_id])
    @reservation.planet = @planet
    @reservation.user = current_user

    if @reservation.save!
      redirect_to profile_path
    else
      render :new
    end
  end

  def show
    @reservations = Reservation.where(user: current_user)
  end

  def destroy
    @reservation.destroy
    respond_to do |format|
      format.html { redirect_to profile_url, notice: 'Garden was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

end
