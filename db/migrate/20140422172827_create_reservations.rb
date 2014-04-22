class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
      t.string :name
      t.string :phone_number
      t.integer :num_of_people
      t.string :time
      t.text :special_request
      t.timestamps
    end
  end
end
