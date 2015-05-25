json.array!(@listings) do |listing|
  json.extract! listing, :id, :amount, :user_id
  json.url listing_url(listing, format: :json)
end
