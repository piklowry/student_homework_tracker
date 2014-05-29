class Cohort < ActiveRecord::Migration
  def change
    create_table :cohorts do |t|
      t.string :subject
      t.string :city
      t.date :start_date
      t.date :end_date

		end
  end
end
