class Location < ActiveRecord::Base
	has_many :cohorts
	accepts_nested_attributes_for :cohorts
end