class Appoiment < ApplicationRecord

  validates_presence_of :begindate, :enddate
  
  validate :no_reservation_overlap
  belongs_to :consulting_room
  belongs_to :patient
  belongs_to :doctor
 



def no_reservation_overlap
  if (Appoiment.where("(? BETWEEN begindate AND enddate OR ? BETWEEN begindate AND enddate) AND patient = ? AND doctor = ?", self.begindate, self.enddate, self.patient, self.doctor).any?)
     errors.add(:enddate, 'it overlaps another reservation')
  end
end
end
