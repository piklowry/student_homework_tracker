class AddTeacherToCohorts < ActiveRecord::Migration
  def change
    add_column :cohorts, :teacher, :string
  end
end
