class CreatePatrons < ActiveRecord::Migration
  def change
    create_table :patrons do |t|
      t.string :name
      t.string :phone_number
      t.integer :no_of_people
      t.timestamps
    end
  end
end
