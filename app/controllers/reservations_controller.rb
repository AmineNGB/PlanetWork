class ReservationsController < ApplicationController

  def new
  @reservations = Reservation.new
  end

  def edit
      @reservations = Reservations.find(params[:id])
  end

  def user_show
    @reservations = Reservation.where(user: current_user)
  end

  def date
    date = Date.civil(*params[:event].sort.map(&:last).map(&:to_i))
  end
end
