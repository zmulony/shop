class Order < ActiveRecord::Base
	attr_accessible :confirmed, :buyer_id

	belongs_to :buyer

	has_many :order_items
end