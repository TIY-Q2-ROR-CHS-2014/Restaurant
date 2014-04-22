class TablesController < ApplicationController

	def new
		@table = Table.new
	end

	def create
		@table = Table.new table_params
		@table.save
		redirect_to root_path
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

    def table_params
      params.require(:table).permit(:table_number, :seats, :type)
    end



end
