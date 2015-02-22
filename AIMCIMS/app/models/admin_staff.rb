class AdminStaff < ActiveRecord::Base

  validates :dateHired, presence: true
  validates :position, presence: true
  validates :status, presence: true

  has_one :login_accounts
end
