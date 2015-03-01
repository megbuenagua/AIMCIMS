class LoanType < ActiveRecord::Base

  belongs_to :loan_applications

  validates :loan_name, presence: true
  validates :maxamount, presence: true
  validates :minamount, presence: true
  validates :interest, presence: true
  validates :period, presence: true
  validates :penalty, presence: true

  validates_uniqueness_of :loan_name
end
