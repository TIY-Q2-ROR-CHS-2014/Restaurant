class RemoveColumnFromPatron < ActiveRecord::Migration
  def change
    remove_column :patrons, :no_of_people, :integer
  end
end
