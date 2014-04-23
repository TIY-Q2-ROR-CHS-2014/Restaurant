class PatronsController < ApplicationController
  before_filter :find_patron, only: [:show, :edit, :update, :destroy]

  def new
    @patron = Patron.new
  end


  def create
    @patron = Patron.new patron_params
    if @patron.save
        flash[:notice]= "Patron added OK."
        redirect_to root_path
    else
        flash[:error]= "Error adding Patron!"
        render :new
    end
  end


  def edit

  end


  def update
    if @patron.update_attributes patron_params
        flash[:notice] = "Patron successfully updated"
        redirect_to root_path
    else
        flash[:error] = "Need to enter more information"
        render :edit    
    end
  end


  def destroy
    @patron.delete
    redirect_to root_path
  end


  def show
  end


  private
    def find_patron
      @patron = Patron.find params[:id]
    end

    def patron_params
      params.require(:patron).permit(:name, :phone_number)
    end

end
