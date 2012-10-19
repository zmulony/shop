class OrderItem < ActiveRecord::Base
	attr_accessible :product, :quantity, :price

	belongs_to :order
	belongs_to :product
end