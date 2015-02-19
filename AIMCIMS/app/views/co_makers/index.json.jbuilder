json.array!(@co_makers) do |co_maker|
  json.extract! co_maker, :id, :coMakerId, :coMakerfname, :coMakermname, :coMakerlname, :birthdate, :address, :spouse, :contactNumber, :employer, :employerAddress, :employerContactNumber, :relationship
  json.url co_maker_url(co_maker, format: :json)
end
