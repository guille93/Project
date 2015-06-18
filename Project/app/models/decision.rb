class Decision < ActiveRecord::Base
	belongs_to :user
	def self.last_created_decisions n
		Decision.order(created_at: :desc).limit(n)
	end
	def self.filter_by_category category
		 Decision.where("category is ?",category)
	end

	def self.more_voted_decisions n
		Decision.order(vote_1: :desc).limit(n)
	end
end
