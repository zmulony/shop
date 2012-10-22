class Admin::OrdersController < Admin::AdminController
	before_filter :authenticate_admin!
	
	def index
		@orders = Order.all
	end

	def show
		@order = Order.find(params[:id])
		@buyer = Buyer.find(@order.buyer_id)
		@total_price = 0
	end
end