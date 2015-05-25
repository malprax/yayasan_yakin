json.array!(@months) do |month|
  json.extract! month, :id, :bulan, :year_id
  json.url month_url(month, format: :json)
end
