class Place < ActiveRecord::Base
  has_many :prices
  has_many :amenities

  accepts_nested_attributes_for :prices, allow_destroy: true
  accepts_nested_attributes_for :amenities, allow_destroy: true

  validate :name, :address, :phone, presence: true
end
