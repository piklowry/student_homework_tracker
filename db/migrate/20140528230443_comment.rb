class Comment < ActiveRecord::Migration
  def change
  	create_table :comments do |t|
      t.string :message
      t.integer :commentable_id
      t.string :commentable_type
    end
  end
end
