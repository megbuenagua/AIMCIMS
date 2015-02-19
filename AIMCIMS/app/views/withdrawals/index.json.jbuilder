json.array!(@withdrawals) do |withdrawal|
  json.extract! withdrawal, :id, :memberId, :date, :amount, :amount, :orNumber, :staffId
  json.url withdrawal_url(withdrawal, format: :json)
end
