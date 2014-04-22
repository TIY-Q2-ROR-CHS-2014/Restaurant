class AddWorkflowStateToTables < ActiveRecord::Migration
  def change
    add_column :tables, :workflow_state, :string
  end
end
