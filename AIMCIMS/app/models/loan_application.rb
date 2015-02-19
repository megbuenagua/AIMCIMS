class LoanApplication < ActiveRecord::Base
  belongs_to :members, foreign_key: "member_id"
  belongs_to :loan_types, foreign_key: "loan_type_id"
  has_many :loan_payments
  has_many :co_makers
end
