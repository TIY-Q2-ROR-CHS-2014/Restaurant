class PatronsController < ApplicationController
  before_filter

  def new
    @patron = Patron.new
  end

  def create
      @patron = Patron.new patron_params
    if @patron.save
      flash[:notice]= "Patron added OK."
      redirect_to root_path
    else
        flash[:error]= "Error adding patron!"
        render :new
    end
  end

  def edit
      @patron = Patron.find params[:id]end

  def update
    @patron = Patron.find params[:id]
    @table.update_attributes table_params
    redirect_to root_path
  end

  def destroy
    @patron = Patron.find params[:id]
    @patron.delete
    redirect_to root_path
  end

  def show
    @patron = Patron.find params[:id]
  end


  private
    def patron_params
      params.require(:table).permit(:name, :phone_number)
    end

end
