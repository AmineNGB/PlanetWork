class UsersController < ApplicationController

  def profile
    @reservations = current_user.reservations
    @planets = current_user.planets
  end

  private

end
