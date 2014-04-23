class HomeController < ApplicationController
	def index
		@patrons = Patron.all
		@reservations = Reservation.all
	end

end
