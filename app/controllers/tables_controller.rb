class TablesController < ApplicationController
	before_filter :find_table, only: [:show, :edit, :update, :destroy, :available, :reserved]
	
	def new
		@tables = Table.new
	end

	def create
		@table = Table.create table_params
		success = @table.save
		if success == true
			flash[:notice]= "Table added OK."
			redirect_to tables_path(@table)
		else
		    flash[:error]= "Error adding Table!"
		    render :new
		end
	end

	def edit
	end

	def update
		@table.update_attributes table_params
		redirect_to tables_path(@table)
	end

	def destroy
		@table.delete
		redirect_to tables_path(@table)
	end

	def show
	end

	def available
		@table.available!
		redirect_to tables_path(@table)
	end

	def reserved
		@table.reserved!
		redirect_to tables_path(@table)
	end


private
	def find_table
		@tables = Table.find params[:id]
	end

  def table_params
    params.require(:table).permit(:table_number, :seats, :tbl_typ)
  end
end
