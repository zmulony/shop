class OrderController < ApplicationController
	def index
		@total_price = 0
	end

	def add_order_item
		product = Product.find(params[:id])
		order_item = @cart.order_items.where(:product_id => product.id).first

		if order_item == nil
			order_item = @cart.order_items.create(:product => product, :quantity => 1, :price => product.price)
		else
			order_item.quantity += 1
			order_item.price += product.price
			order_item.update_attributes(params[:order_item])
		end

		redirect_to '/cart'
	end

	def delete_order_item
		order_item = @cart.order_items.find(params[:id])

		if order_item.quantity == 1
			order_item.delete
		else
			order_item.quantity -= 1
			order_item.price -= product.price
			order_item.update_attributes(params[:order_item])
		end
		
		redirect_to '/cart'
	end

	def confirm
		if @current_buyer.first_name and @current_buyer.last_name
			@cart.confirmed = true
			@cart.update_attributes(params[:order])

			render :action => :finalize
		end
	end

	def finalize
		if @current_buyer.update_attributes(params[:buyer])
			@cart.confirmed = true
			@cart.update_attributes(params[:order])
		end
	end
end