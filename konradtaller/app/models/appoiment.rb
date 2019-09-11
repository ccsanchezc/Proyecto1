class Appoiment < ApplicationRecord

  validates_presence_of :begindate, :enddate
  
  validate :no_reservation_overlap
  belongs_to :consulting_room
  belongs_to :patient
  belongs_to :doctor  
  
  scope :recent, -> {order(:begindate , :asc)}


def no_reservation_overlap
  if (Appoiment.where("(? BETWEEN begindate AND enddate OR ? BETWEEN begindate AND enddate) AND ( patient_id = ? AND doctor_id = ? AND consulting_room_id = ?)", self.begindate, self.enddate, self.patient, self.doctor, self.consulting_room).any?)
     errors.add(:enddate, 'it overlaps another reservation')
  end
end
end
