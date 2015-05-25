json.array!(@years) do |year|
  json.extract! year, :id, :tahun
  json.url year_url(year, format: :json)
end
