class Products < ActiveRecord::Migration
  def up
  	create_table :products do |p|
      p.string :name
      p.text :description
      p.integer :price
      p.integer :category_id

      p.timestamps
    end
  end

  def down
  	drop_table :products
  end
end