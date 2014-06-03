class Assignment < ActiveRecord::Base
	belongs_to :cohort
	belongs_to :user
	has_many :submissions
	accepts_nested_attributes_for :submissions
	has_many :comments, :as => :commentable
	accepts_nested_attributes_for :comments
end
