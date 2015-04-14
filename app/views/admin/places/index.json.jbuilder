json.array!(@places) do |place|
  json.extract! place, :id, :name, :address, :phone, :prices, :amenities
  json.url admin_place_url(place, format: :json)
end
