class CoMaker < ActiveRecord::Base
 has_many :loan_applications
  
  validates :coMakerfname, presence: true
  validates :coMakermname, presence: true
  validates :coMakerlname, presence: true
  validates :birthdate, presence: true
  validates :address, presence: true
  validates :contactNumber, presence: true
  
  def cmfullname
  "#{coMakerfname}, #{coMakermname} #{coMakerlname} (#{coMakerId}) "
  end
  
  def comaker1
  co_maker.where(coMakerId: ':coMaker1_id').take
  end

    
end
