class ConsultingRoom < ApplicationRecord
   validates :name, presence: true
   validates :location, presence: true
   validates :typeroom, presence: true
   
  has_many :appoiments
  
  
  
end
