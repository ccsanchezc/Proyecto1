json.extract! patient, :id, :document, :name, :lastname, :birthdate, :created_at, :updated_at
json.url patient_url(patient, format: :json)
