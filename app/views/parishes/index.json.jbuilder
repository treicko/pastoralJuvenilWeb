json.array!(@parishes) do |parish|
  json.extract! parish, :id, :Name, :address, :managers_id, :vicarage_id
  json.url parish_url(parish, format: :json)
end
