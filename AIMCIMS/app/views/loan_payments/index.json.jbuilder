json.array!(@loan_payments) do |loan_payment|
  json.extract! loan_payment, :id, :loanId, :memberId, :paymentDate, :amount, :orNumber, :staffId, :remarks
  json.url loan_payment_url(loan_payment, format: :json)
end
