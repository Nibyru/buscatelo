class Place < ActiveRecord::Base
	has_many :prices
	has_many :amenities

  validate :name, :address, :phone, presence: true
end
