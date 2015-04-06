json.array!(@realestates) do |realestate|
  json.extract! realestate, :id, :address, :price, :sqfootage, :bed, :bath, :constructed, :forsale
  json.url realestate_url(realestate, format: :json)
end
