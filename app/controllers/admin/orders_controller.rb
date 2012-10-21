class Admin::OrdersController < Admin::AdminController
	before_filter :authenticate_admin!
	
	def index
		@orders = Order.all
	end
end