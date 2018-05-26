json.extract! dependent, :id, :request_id, :name, :last_name, :second_last_name, :birthdate, :relationship, :created_at, :updated_at
json.url dependent_url(dependent, format: :json)
