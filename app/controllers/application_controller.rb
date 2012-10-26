class ApplicationController < ActionController::Base
  protect_from_forgery

  before_filter :init_buyer_and_cart, :get_query

  def init_buyer_and_cart
  	@current_buyer ||= session[:buyer_id] && Buyer.find(session[:buyer_id])

  	if @current_buyer == nil
  		@current_buyer = Buyer.create
  		session[:buyer_id] = @current_buyer.id
  	end

  	@cart = @current_buyer.orders.where(:confirmed => 'false').first

  	if @cart == nil
  		@cart = Order.create(:buyer_id => @current_buyer.id, :confirmed => 'false')
  	end
  end

  def get_query
    @q = Product.search(params[:q])
    @results = @q.result(:distinct => true)
  end

end
