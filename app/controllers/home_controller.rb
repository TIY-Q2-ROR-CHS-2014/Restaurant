class HomeController < ApplicationController
	def index
		@tables = Table.all
		@reservations = Reservation.All

	end
end
