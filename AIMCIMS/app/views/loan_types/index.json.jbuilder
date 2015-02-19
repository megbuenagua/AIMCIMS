json.array!(@loan_types) do |loan_type|
  json.extract! loan_type, :id, :loanTypeId, :loanName, :maxAmount, :minAmmount, :interestRate, :period, :termOfPayment, :penalty
  json.url loan_type_url(loan_type, format: :json)
end
