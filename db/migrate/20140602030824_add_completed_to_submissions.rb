class AddCompletedToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :completed, :boolean, default: false
  end
end
