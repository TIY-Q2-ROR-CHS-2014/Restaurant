class CreateTables < ActiveRecord::Migration
  def change
    create_table :tables do |t|
      t.integer :table_number
      t.integer :seats
      t.string :type
      t.timestamps
    end
  end
end
