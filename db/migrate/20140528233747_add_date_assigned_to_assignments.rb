class AddDateAssignedToAssignments < ActiveRecord::Migration
  def change
    add_column :assignments, :date_assigned, :date
  end
end
