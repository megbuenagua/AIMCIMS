json.array!(@savings) do |saving|
  json.extract! saving, :id, :savingsId, :memberId, :dateTime, :amount, :orNumber, :staffed
  json.url saving_url(saving, format: :json)
end
