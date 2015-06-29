class DecisionsController < ApplicationController
	before_action :require_user, only: [:new, :vote1, :vote2]
	def index
		@decisions = Decision.all
		@randomdecision = @decisions.sample
		@media2 = @randomdecision.vote_2*100/(@randomdecision.vote_1+@randomdecision.vote_2).round
		@media1 = @randomdecision.vote_1*100/(@randomdecision.vote_1+@randomdecision.vote_2).round
		@category = nil
	end
	def home
		@decisions = Decision.all
	end
	def new
		@user = User.find params[:user_id]
		@decision = Decision.new 
	end
	def  show
		@decision = Decision.find params[:id]

	end

	def index_by_category
		@decisions = Decision.all
		@decisions = Decision.filter_by_category params[:category]
		@randomdecision = @decisions.sample
		flash[:category] = params[:category]
		render 'index'
	end

	def last_decisions
		@last_decisions = Decision.last_created_decisions(5)
	end
	def more_voted
		@more_voted = Decision.more_voted_decisions(5)
	end

	def create
		@user = User.find params[:user_id]
		@decisions = @user.decisions.new decision_params
		if @decisions.save
			redirect_to root_path
		else
			render 'new'
		end
	end
	
	def vote1
		@decision = Decision.find params[:id]
		@decision.vote_1 += 1
		@decision.array_users.push(current_user.id)
		if 	@decision.save
			if flash[:category] == nil
				redirect_to root_path
			else
				redirect_to category_path flash[:category]
			end
		end
	end
	
	def vote2
		@decision = Decision.find params[:id]
		@decision.vote_2 += 1
		@decision.save
		if flash[:category] == nil
			redirect_to root_path
		else
			redirect_to category_path flash[:category]
		end
	end
	def edit
		@decision = Decision.find params[:id]
		@user = User.find params[:user_id]
	end
	def update
		@decision = Decision.find params[:id]

		if @decision.update decision_params
			redirect_to @decision
		else
			render 'edit'
		end

	end

	def destroy
		@decision = Decision.find params[:id]
		@decision.destroy
		redirect_to  user_path(current_user)
	end
	
	private
	def decision_params
		params.require(:decision).permit(:category, :description, :name_1, :vote_1,:vote_2,:image_1,:name_2,:vote_2,:image_2,:date, :array_users)
	end
end
