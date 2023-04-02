json.extract! patient, :id, :name, :conditions, :age, :parents_id, :fav_hour, :fav_weekday, :created_at, :updated_at
json.url patient_url(patient, format: :json)
