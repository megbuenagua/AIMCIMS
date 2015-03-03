class Member < ActiveRecord::Base

has_one :login_accounts
has_many :capital_build_ups
  has_many :cbu_contributions, :through => :capital_build_ups
has_many :loan_applications
  has_many :loan_payments, :through => :loan_applications
has_many :savings
has_many :withdrawals

def fullname
  "#{lastname}, #{firstname} #{middlename} (#{member_number}) "
end

def comaker1
  "#{lastname}, #{firstname} #{middlename} (#{member_id}) "
  end
  
end