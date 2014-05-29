class AddPhotoPicToUsers < ActiveRecord::Migration
  def change
    add_column :users, :photo_pic, :string
  end
end
