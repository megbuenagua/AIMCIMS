class CbuContribution < ActiveRecord::Base

  belongs_to :capital_build_ups, foreign_key: "capital_build_up"
  has_one :members, through: :capital_build_ups

end
