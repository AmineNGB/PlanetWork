class UsersController < ApplicationController

  def profile
    @reservations = current_user.reservations
    @planets = current_user.planets
  end

  def index
    @users = User.all
  end

end
