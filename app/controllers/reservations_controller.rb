class ReservationsController < ApplicationController
  def user_show
    @reservations = Reservation.where(user: current_user)
  end
end
