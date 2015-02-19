class LoanType < ActiveRecord::Base

  has_many :loan_applications

  validates :loanName, presence: true
  validates :maxAmount, presence: true
  validates :minAmmount, presence: true
  validates :interestRate, presence: true
  validates :period, presence: true
  validates :termOfPayment, presence: true
  validates :penalty, presence: true

  validates_uniqueness_of :loanName
end
