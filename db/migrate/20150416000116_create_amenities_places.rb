class CreateAmenitiesPlaces < ActiveRecord::Migration
  def change
    create_table :amenities_places do |t|
      t.string :amenity_id
      t.string :place_id
    end
  end
end
