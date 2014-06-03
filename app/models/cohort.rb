class Cohort < ActiveRecord::Base
	has_many :users
	has_many :assignments
	accepts_nested_attributes_for :assignments
	belongs_to :location
end
