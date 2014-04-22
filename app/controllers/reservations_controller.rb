class ReservationsController < ApplicationController

	def new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	def show
	end


	private

    def reservation_params
      params.require(:reservation).permit(:name, :phone_number, :num_of_people, :time, :special_request)
    end
end
