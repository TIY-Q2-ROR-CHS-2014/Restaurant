class HomeController < ApplicationController
	before_action :authenticate_user!
  def index
		@tables = Table.all
		@reservations = Reservation.all

	end
end
