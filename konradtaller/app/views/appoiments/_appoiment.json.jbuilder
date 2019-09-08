json.extract! appoiment, :id, :consulting_room_id, :patient_id, :doctor_id, :begindate, :enddate, :comment, :created_at, :updated_at
json.url appoiment_url(appoiment, format: :json)
