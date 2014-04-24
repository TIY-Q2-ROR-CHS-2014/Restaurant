class HomeController < ApplicationController
before_action :authenticate_user!
  def index
		@patrons = Patron.all
		@reservations = Reservation.all
    @tables = Table.all
	end

end
