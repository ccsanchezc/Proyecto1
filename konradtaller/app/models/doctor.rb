class Doctor < ApplicationRecord
  
	
  validates :document, numericality: { only_integer: true }
  validates :name, presence: true
  validates :lastname, presence: true
  belongs_to :profession
  has_many :appoiments
  has_many :patient, :through => :appoiments
end
