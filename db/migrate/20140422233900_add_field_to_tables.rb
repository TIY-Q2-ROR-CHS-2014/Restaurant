class AddFieldToTables < ActiveRecord::Migration
  def change
    add_column :tables, :tbl_typ, :string
  end
end
