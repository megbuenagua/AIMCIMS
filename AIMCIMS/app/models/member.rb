class Member < ActiveRecord::Base

has_one :login_account
has_many :capital_build_up
has_many :loan_application
has_many :saving
has_many :withdrawal

def fullname
  "#{lastname}, #{firstname} #{middlename} (#{memberId}) "
end


def comaker1
co_maker.where(coMakerId: ':coMaker1_id').take
end
#def self.search(search)
#  if search
#    find(:all, :conditions => ['name LIKE ?', "%#{search}%"])
#  else
#    find(:all)
#  end
#end
#_comaker1 = co_maker.where(coMakerId: ':coMaker1_id').take
#     @loan_application.coMaker1_id = _comaker1
end