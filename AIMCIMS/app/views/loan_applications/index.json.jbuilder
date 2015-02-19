json.array!(@loan_applications) do |loan_application|
  json.extract! loan_application, :id, :loanId, :loanTypeId, :memberId, :applicationStatus, :dateFiled, :dateApproved, :dateReleased, :nameOfSpouse, :occupationOfSpouse, :otherResources, :totalFamilyIncome, :realProperties, :remarks
  json.url loan_application_url(loan_application, format: :json)
end
