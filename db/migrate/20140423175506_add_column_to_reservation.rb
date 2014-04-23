class AddColumnToReservation < ActiveRecord::Migration
  def change
    add_column :reservations, :no_of_people, :integer
  end
end
