class DecisionsController < ApplicationController
	before_action :require_user, only: [:new, :vote1, :vote2]
	def index
		@decisions = Decision.all
		@randomdecision = @decisions.sample
	end
	def new
		@decision = Decision.new 
	end
	def  show
		@decision = Decision.find params[:id]
	end
	def last_decisions
		@last_decisions = Decision.last_created_decisions(5)
	end


	def create
		@decisions = Decision.new decision_params
		if @decision.save
			redirect_to root_path
		else
			render 'new'
		end
	end
	
	def vote1
		@decision = Decision.find params[:id]
		@decision.vote_1 += 1
		@decision.save
		redirect_to root_path(@decision)
	end
	def vote2
		@decision = Decision.find params[:id]
		@decision.vote_2 += 1
		@decision.save
		redirect_to root_path(@decision)
	end
	def destroy
		@decision = Decision.find params[:id]
		@decision.destroy
		redirect_to  user_path(current_user)

	end
	private
	def decision_params
		params.require(:decision).permit(:category, :description, :name_1, :vote_1,:vote_2,:image_1,:name_2,:vote_2,:image_2)
	end
end
