class ReservationsController < ApplicationController

  def user_show
    @reservations = Reservation.where(user: current_user)
  end

  def date
    date = Date.civil(*params[:event].sort.map(&:last).map(&:to_i))
  end
end
