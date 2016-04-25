json.array!(@church_services) do |church_service|
  json.extract! church_service, :id, :weekday, :schedule, :name
  json.url church_service_url(church_service, format: :json)
end
