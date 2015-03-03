class LoanPayment < ActiveRecord::Base
  belongs_to :loan_applications
end
