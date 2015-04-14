json.array!(@amenities) do |amenity|
  json.extract! amenity, :id, :name, :place_id, :icon
  json.url admin_amenity_url(amenity, format: :json)
end
