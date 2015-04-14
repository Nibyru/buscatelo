class Place < ActiveRecord::Base
	has_many :prices
	has_many :amenities
end
