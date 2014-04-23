class ReservationsController < ApplicationController
	before_action :authenticate_user!
	before_filter :find_reservation, only: [:show, :edit, :update, :destroy]

	def new
		@reservation = Reservation.new
	end

	def create
		@reservation = Reservation.new reservation_params
		success = @reservation.save
		if success == true
			flash[:notice]= "Reservation added OK."
			redirect_to root_path
		else
		    flash[:error]= "Error adding Reservation!"
		    render :new
		end
	end

	def edit
	end

	def update
		success = @reservation.update_attributes reservation_params
		if success == true
        	flash[:notice] = "Reservation successfully updated"
      		redirect_to root_path
    	else
      		flash[:error] = "Need to enter more information"
      		render :edit		
		end
	end

	def destroy
		@reservation.delete
		redirect_to root_path
	end

	def show
	end


	private
		def find_reservation
			@reservation = Reservation.find params[:id]
		end

    	def reservation_params
        	params.require(:reservation).permit(:name, :phone_number, :num_of_people, :time, :date, :special_request)
    	end
end
