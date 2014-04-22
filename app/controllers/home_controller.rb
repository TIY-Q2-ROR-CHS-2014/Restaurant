class HomeController < ApplicationController
	def index
		@tables = Table.all
		@reservations = Reservation.all

	end
end
