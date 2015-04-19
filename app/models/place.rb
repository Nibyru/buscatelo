class Place < ActiveRecord::Base
  #extend FriendlyId
  #friendly_id :slug_candidates, use: :slugged

  has_many :prices
  has_many :photos
  has_and_belongs_to_many :amenities

  accepts_nested_attributes_for :photos, allow_destroy: true
  accepts_nested_attributes_for :prices, allow_destroy: true
  accepts_nested_attributes_for :amenities, allow_destroy: true

  validate :name, :address, :phone, presence: true

  def slug_candidates
    [
      :name,
      [:name, :address],
      [:name, :address, :phone]
    ]
  end
end
