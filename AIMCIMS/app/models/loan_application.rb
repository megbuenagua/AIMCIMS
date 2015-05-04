class LoanApplication < ActiveRecord::Base
  belongs_to :members
  belongs_to :loan_types
  
  has_many :loan_payments
  has_many :co_makers
  
 validates :comaker1, presence: false
  validates :comaker2, presence: false
  
  
def fullname
  "#{lastname}, #{firstname} #{middlename} (#{member_number}) "
end

end
