class Patient < ApplicationRecord
	    validates :name, presence: true
		has_many :appoiments
		has_many :doctor, :through => :appoiments
end
