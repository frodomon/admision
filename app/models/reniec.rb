class Reniec < ApplicationRecord
	def self.search(search)
    if search
      where('doi = ?',search)
    end
  end
end
