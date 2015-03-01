class Member < ActiveRecord::Base

has_one :login_account
has_many :capital_build_up
has_many :loan_application
has_many :saving
has_many :withdrawal

def fullname
  "#{lastname}, #{firstname} #{middlename} (#{member_number}) "
end

def comaker1
  "#{lastname}, #{firstname} #{middlename} (#{member_id}) "
  end
  
end