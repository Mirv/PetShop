class ProductsController < ApplicationController
	before_action :find_product, only: [:show]

	def index
		@products = Product.all
	end

	def show
		@category = Category.all
	end

	private
		def find_product
			@product = Product.find(params[:id])
		end
end
