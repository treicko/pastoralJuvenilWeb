json.array!(@vicarages) do |vicarage|
  json.extract! vicarage, :id, :Name, :managers_id
  json.url vicarage_url(vicarage, format: :json)
end
