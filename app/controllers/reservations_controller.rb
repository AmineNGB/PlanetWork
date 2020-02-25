class ReservationsController < ApplicationController
  skip_before_action :authenticate_user!
  before_action :set_reservation, only: [:show, :edit, :update, :destroy]
  def new
    @reservations = Reservation.new
  end

  def edit
      @reservations = Reservation.find(params[:id])
  end

  def update
    @reservation.update(reservation_params)

    redirect_to reservation_path(@reservation)
  end

  def create
    @reservation = Reservation.new(reservation_params)
    @reservation.user = current_user
    @reservation.save!
    redirect_to reservation_path
  end

  def show
    @reservations = Reservation.where(user: current_user)
  end

  def date
    date = Date.civil(*params[:event].sort.map(&:last).map(&:to_i))
  end

  private

  def reservation_params
    params.require(:reservation).permit(:date)
  end

  def set_reservation
    @reservation = Reservation.find(params[:id])
  end

end
