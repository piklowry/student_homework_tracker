class Assignment < ActiveRecord::Base
	belongs_to :cohort
	belongs_to :users
end
