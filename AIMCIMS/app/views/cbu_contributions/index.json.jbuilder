json.array!(@cbu_contributions) do |cbu_contribution|
  json.extract! cbu_contribution, :id, :memberID, :date, :amount, :OrNumber, :staffId, :remarks
  json.url cbu_contribution_url(cbu_contribution, format: :json)
end
