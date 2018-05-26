class Dependent < ApplicationRecord
  belongs_to :request, inverse_of: :dependents
end
