json.extract! observation, :id, :observation_type_id, :obs, :created_at, :updated_at
json.url observation_url(observation, format: :json)
