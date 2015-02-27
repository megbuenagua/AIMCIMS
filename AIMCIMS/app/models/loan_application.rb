class LoanApplication < ActiveRecord::Base
  belongs_to :members, foreign_key: "member_id"
  belongs_to :loan_types, foreign_key: "loan_type_id"
  belongs_to :co_makers, foreign_key: "coMaker1_id"
  belongs_to :co_makers, foreign_key: "coMaker2_id"
  has_many :loan_payments, :through=> :members
  has_many :co_makers
  

  
  def comaker1
  "#{lastname}, #{firstname} #{middlename} (#{memberId}) "
  end


end
