class Patient < ApplicationRecord
		validates :document, numericality: { only_integer: true }
	    validates :name, presence: true
		validates :lastname, presence: true
		has_many :appoiments
		has_many :doctor, :through => :appoiments
end
