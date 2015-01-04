json.array!(@farms) do |farm|
  json.extract! farm, :id, :name, :description, :offer, :email, :address, :phone
  json.url farm_url(farm, format: :json)
end
