json.array!(@prices) do |price|
  json.extract! price, :id, :name, :price, :place_id
  json.url admin_price_url(price, format: :json)
end
