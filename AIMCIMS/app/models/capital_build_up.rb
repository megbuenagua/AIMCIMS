class CapitalBuildUp < ActiveRecord::Base
  belongs_to :members, foreign_key: "member_id"
  has_many :capital_build_ups
  
  validates :member_id, presence: true
  validates :membership_type, presence: true
  validates :member_since, presence: true
  validates :subscribed_shares, presence: true
  validates :initial_payment, presence: true
  validates :terms_of_payment, presence: true
   
end
