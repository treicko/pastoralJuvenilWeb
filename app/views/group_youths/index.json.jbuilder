json.array!(@group_youths) do |group_youth|
  json.extract! group_youth, :id, :Name, :gatheringPlace, :schedules, :managers_id, :creationDate, :parish_id
  json.url group_youth_url(group_youth, format: :json)
end
