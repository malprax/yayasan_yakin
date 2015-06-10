json.array!(@cashflows) do |cashflow|
  json.extract! cashflow, :id, :date, :transaction, :debit, :credit, :amount, :description
  json.url cashflow_url(cashflow, format: :json)
end
