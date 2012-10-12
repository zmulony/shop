class ShopController < ApplicationController
	def index
		@categories = Category.all
	end
end