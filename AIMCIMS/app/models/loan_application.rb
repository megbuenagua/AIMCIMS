class LoanApplication < ActiveRecord::Base
  belongs_to :member
  belongs_to :loan_type
  
  has_many :loan_payments
  has_many :co_makers
  
 validates :comaker1, presence: false
  validates :comaker2, presence: false
  
  
def fullname
  "#{lastname}, #{firstname} #{middlename} (#{member_number}) "
end

end
