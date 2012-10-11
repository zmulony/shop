class Product < ActiveRecord::Base
	attr_accessible :name, :description, :price
end