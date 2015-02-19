class CoMaker < ActiveRecord::Base
  belongs_to :loan_applications
  
  validates :coMakerfname, presence: true
  validates :coMakermname, presence: true
  validates :coMakerlname, presence: true
  validates :birthdate, presence: true
  validates :address, presence: true
  validates :contactNumber, presence: true
  validates :relationship, presence: true
    
    
end
