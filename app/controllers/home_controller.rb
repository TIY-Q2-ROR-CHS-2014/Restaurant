class HomeController < ApplicationController
before_action :authenticate_user!
  def index
		@patrons = Patron.all
		@reservations = Reservation.all
	end

end
