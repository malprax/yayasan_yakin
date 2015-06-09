json.array!(@cards) do |card|
  json.extract! card, :id, :month, :amount, :employee, :urut, :recipient_id
  json.url card_url(card, format: :json)
end
