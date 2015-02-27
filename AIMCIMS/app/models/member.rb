class Member < ActiveRecord::Base

has_one :login_account
has_many :capital_build_up
has_many :loan_application
has_many :saving
has_many :withdrawal

def fullname
  "#{lastname}, #{firstname} #{middlename} (#{memberId}) "
end





end