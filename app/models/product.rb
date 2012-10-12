class Product < ActiveRecord::Base
	attr_accessible :name, :description, :price, :category_id

	belongs_to :category
end