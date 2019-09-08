class Doctor < ApplicationRecord
  
	
  validates :name, presence: true
  belongs_to :profession
  has_many :appoiments
  has_many :patient, :through => :appoiments
end
