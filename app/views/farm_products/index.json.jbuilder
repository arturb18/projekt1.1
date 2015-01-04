json.array!(@farm_products) do |farm_product|
  json.extract! farm_product, :id, :farm_id, :product_id
  json.url farm_product_url(farm_product, format: :json)
end
