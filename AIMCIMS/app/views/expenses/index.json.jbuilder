json.array!(@expenses) do |expense|
  json.extract! expense, :id, :particulars, :date, :amount, :approvedBy, :receivedBy, :staffId
  json.url expense_url(expense, format: :json)
end
