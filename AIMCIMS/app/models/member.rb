class Member < ActiveRecord::Base

has_one :login_account
has_many :capital_build_up
has_many :loan_application
has_many :saving
has_many :withdrawal



#def self.search(search)
#  if search
#    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
#  else
#    find(:all)
#  end
#end

end