class ProductsController < ApplicationController
	def index
		@products = Decision.products
	end
	def new 
		@decision = Decision.find params[:decision_id]

		@product = Product.new
	end
end
