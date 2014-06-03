class AddCohortIdToLocations < ActiveRecord::Migration
  def change
    add_column :locations, :cohort_id, :integer
  end
end
