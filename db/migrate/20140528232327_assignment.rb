class Assignment < ActiveRecord::Migration
  def change
    create_table :assignments do |t|
      t.string :title
      t.text :description
      t.boolean :completed, default: false
      t.date :due_date
      t.integer :user_id
    end
  end
end

