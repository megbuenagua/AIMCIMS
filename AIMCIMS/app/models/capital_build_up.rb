class CapitalBuildUp < ActiveRecord::Base
  belongs_to :members
  has_many :capital_build_ups
  
  validates :memberId, presence: true
  validates :membershipType, presence: true
  validates :memberSince, presence: true
  validates :subscribedShares, presence: true
  validates :initialPayment, presence: true
  validates :termsOfPayment, presence: true
   
end
