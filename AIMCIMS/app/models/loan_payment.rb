class LoanPayment < ActiveRecord::Base
  belongs_to :loan_application
end
