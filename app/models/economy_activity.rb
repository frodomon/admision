class EconomyActivity < ApplicationRecord
	def full_name
		"#{try(:ciiu)} - #{try(:name)}".to_s
	end

end
