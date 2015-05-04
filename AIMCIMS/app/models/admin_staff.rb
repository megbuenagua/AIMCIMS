class AdminStaff < ActiveRecord::Base

  has_one :login_accounts
  has_many :savings
    has_many :members, :through => :savings
  
  validates :date_hired, presence: true
  validates :staff_position, presence: true
  validates :status, presence: true
validates :password, presence: true

end
