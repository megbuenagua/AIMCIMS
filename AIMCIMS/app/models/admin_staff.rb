class AdminStaff < ActiveRecord::Base

  has_one :login_accounts
  
  validates :dateHired, presence: true
  validates :position, presence: true
  validates :status, presence: true


end
