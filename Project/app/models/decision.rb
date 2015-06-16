class Decision < ActiveRecord::Base
	belongs_to :user
	def self.last_created_decisions n
		Decision.order(created_at: :desc).limit(n)
	end
end
