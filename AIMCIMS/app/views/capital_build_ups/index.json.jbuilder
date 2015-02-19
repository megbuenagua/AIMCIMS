json.array!(@capital_build_ups) do |capital_build_up|
  json.extract! capital_build_up, :id, :memberId, :membershipType, :memberSince, :subscribedShares, :totalAmountShares, :initialPayment, :totalPaidAmount, :paidSharesPercentage, :termsOfPayment, :status, :remarks
  json.url capital_build_up_url(capital_build_up, format: :json)
end
