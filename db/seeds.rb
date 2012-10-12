# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Category.create :name => "milk products"
Category.create :name => "fruits"
Category.create :name => "vegetables"
Category.create :name => "fish"
Category.create :name => "meat"

Product.create :name => "potato", :description => "just a bag of nice potatoes", :price => 219, :category_id => 3
Product.create :name => "carrot", :description => "some fresh carrots", :price => 99, :category_id => 3
Product.create :name => "garlic", :description => "garlic from spain", :price => 67, :category_id => 3
Product.create :name => "milk", :description => "liter of milk from polish cows", :price => 345, :category_id => 1
Product.create :name => "apple", :description => "shiny red apples", :price => 157, :category_id => 2
Product.create :name => "orange", :description => "sweet oranges", :price => 532, :category_id => 2
Product.create :name => "pork", :description => "fine meat for fine men", :price => 1099, :category_id => 5
Product.create :name => "chicken", :description => "better than KFC!", :price => 896, :category_id => 5
Product.create :name => "salmon", :description => "fresh salmon from nordic fjords", :price => 2099, :category_id => 4
Product.create :name => "tuna", :description => "fresh tuna - best for sushi", :price => 1857, :category_id => 4