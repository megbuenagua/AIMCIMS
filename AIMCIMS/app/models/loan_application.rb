class LoanApplication < ActiveRecord::Base
  belongs_to :members, foreign_key: "member_id"
  belongs_to :loan_types, foreign_key: "loan_type_id"
  
  has_many :loan_payments, :through=> :members
  has_many :co_makers
  
 validates :comaker1, presence: false
  validates :comaker2, presence: false
  
  


end
