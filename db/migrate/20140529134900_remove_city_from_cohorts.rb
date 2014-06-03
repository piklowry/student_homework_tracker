class RemoveCityFromCohorts < ActiveRecord::Migration
  def change
    remove_column :cohorts, :city, :string
  end
end
