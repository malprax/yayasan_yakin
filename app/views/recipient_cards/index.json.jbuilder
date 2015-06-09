json.array!(@recipient_cards) do |recipient_card|
  json.extract! recipient_card, :id, :month, :amount, :donatur, :receiver, :urut, :recipient_id
  json.url recipient_card_url(recipient_card, format: :json)
end
