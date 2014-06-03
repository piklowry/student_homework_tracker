class AddFinishedToSubmissions < ActiveRecord::Migration
  def change
    add_column :submissions, :finished, :string
  end
end
