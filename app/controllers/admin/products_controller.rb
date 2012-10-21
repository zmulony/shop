class Admin::ProductsController < Admin::AdminController
	before_filter :authenticate_admin!
	
	def index
		@products = Product.all
	end

	def new
		@product = Product.new
	end

	def create
		@product = Product.new(params[:product])

		if @product.save
			redirect_to admin_products_path
		else
			render :new
		end
	end

	def edit
		@product = Product.find(params[:id])
		@category_names = Category.all.map {|category| [category.name, category.id]}
	end

	def update
		@product = Product.find(params[:id])

		@product.update_attributes(params[:product])

		redirect_to admin_products_path
	end

	def destroy
		@product = Product.find(params[:id])

		@product.destroy

		redirect_to admin_products_path
	end
end