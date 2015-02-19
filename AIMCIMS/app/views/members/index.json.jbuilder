json.array!(@members) do |member|
  json.extract! member, :id, :memberId, :firstname, :middlename, :lastname, :gender, :birthdate, :permanentAddress, :homeNumber, :officeNumber, :mobileNumber, :personalEmail, :civilSatus, :spouse, :bankAccount, :enrolledWithPostbank, :employer, :employerNumber, :position, :officeAddress, :officeEmail, :membershipType, :dateApproved, :notes
  json.url member_url(member, format: :json)
end
