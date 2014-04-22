class ReservationsController < ApplicationController

	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = Reservation.new reservation_params
		if @reservation.save
			flash[:notice]= "Reservation added OK."
			redirect_to root_path
		else
		    flash[:error]= "Error adding Reservation!"
		    render :new
		end
	end

	def edit
		@reservation = Reservation.find params[:id]
	end

	def update
		@reservation = Reservation.find params[:id]
		@reservation.update_attributes reservation_params
		redirect_to root_path
	end

	def destroy
		@reservation = Reservation.find params[:id]
		@reservation.delete
		redirect_to root_path
	end

	def show
		@reservation = Reservation.find params[:id]
	end


	private

    def reservation_params
      params.require(:reservation).permit(:name, :phone_number, :num_of_people, :time, :special_request)
    end
end
