class AdminStaff < ActiveRecord::Base

  has_one :login_accounts
  
  validates :date_hired, presence: true
  validates :staff_position, presence: true
  validates :status, presence: true


end
