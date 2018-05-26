class BankAccount < ApplicationRecord
  belongs_to :request, inverse_of: :bank_accounts
end
