json.array!(@donaturs) do |donatur|
  json.extract! donatur, :id, :name
  json.url donatur_url(donatur, format: :json)
end
