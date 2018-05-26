class Observation < ApplicationRecord
  has_one :observation_type, dependent: :destroy
  belongs_to :request, inverse_of: :observations
end
