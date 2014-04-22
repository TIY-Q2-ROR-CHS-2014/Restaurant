class TablesController < ApplicationController

	def new
		@table = Table.new
	end

	def create
		@table = Table.new table_params
		if @table.save
			flash[:notice]= "Table added OK."
			redirect_to root_path
		else
		    flash[:error]= "Error adding Table!"
		    render :new
		end
	end

	def edit
		@table = Table.find params[:id]

	end

	def update
		@table = Table.find params[:id]
		@table.update_attributes table_params
		redirect_to root_path
	end

	def destroy
		@table = Table.find params[:id]
		@table.delete
		redirect_to root_path
	end

	def show
		@table = Table.find params[:id]

	end


	private

    def table_params
      params.require(:table).permit(:table_number, :seats, :type)
    end



end
