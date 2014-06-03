class Submission < ActiveRecord::Base
  belongs_to :user
  belongs_to :assignment
  # resourcify
  has_many :comments, :as => :commentable


end