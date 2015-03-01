class CoMaker < ActiveRecord::Base
 has_many :loan_applications
  
  validates :comakerfname, presence: true
  validates :comakermname, presence: true
  validates :comakerlname, presence: true
  validates :birthdate, presence: true
  validates :address, presence: true
  validates :contact_number, presence: true
  
  def cmfullname
  "#{comakerfname}, #{comakermname} #{comakerlname} (#{comaker_number}) "
  end
  
  def comaker1
   #"#{comakerfname}, #{comakermname} #{comakerlname} (#{comaker_number}) "
  #co_maker.where(comaker_number: ':comaker1').take
  end

    
end
