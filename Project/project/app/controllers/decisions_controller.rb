class DecisionsController < ApplicationController
	def index
		@decisions = Decision.all
	end
	def new
		@decision = Decision.new 
	end

	def create
		@decision = Decision.new decision_params
		if @decision.save
			render 'show', id: @decision.id
		else
			render 'new'
		end
	end
	private
	def decision_params
	params.require(:decision).permit(:category, :description)
	end
end
