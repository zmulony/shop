class ShopController < ApplicationController
	def index
		@products = Product.all
	end
end