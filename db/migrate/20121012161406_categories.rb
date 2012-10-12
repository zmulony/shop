class Categories < ActiveRecord::Migration
  def up
  	create_table :categories do |c|
      c.string :name

      c.timestamps
    end
  end

  def down
  	drop_table :categories
  end
end
