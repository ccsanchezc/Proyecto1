json.extract! doctor, :id, :document, :name, :lastname, :phone, :profession_id, :created_at, :updated_at
json.url doctor_url(doctor, format: :json)
