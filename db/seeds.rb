# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Product.create :name => "potato", :description => "just a bag of nice potatoes", :price => 219
Product.create :name => "carrot", :description => "some fresh carrots", :price => 99
Product.create :name => "garlic", :description => "garlic from spain", :price => 67
Product.create :name => "milk", :description => "liter of milk from polish cows", :price => 345