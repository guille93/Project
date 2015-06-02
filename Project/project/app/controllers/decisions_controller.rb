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
	def vote
		@product = Product.find params[:id]
		@product.votes += 1
		@product.save
		redirect_to root_path(@product)
	end
	private
	def decision_params
		params.require(:decision).permit(:category, :description)
	end
end
