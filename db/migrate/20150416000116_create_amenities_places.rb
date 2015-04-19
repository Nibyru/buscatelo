class CreateAmenitiesPlaces < ActiveRecord::Migration
  def change
    create_table :amenities_places do |t|
      t.integer :amenity_id
      t.integer :place_id
    end
  end
end
