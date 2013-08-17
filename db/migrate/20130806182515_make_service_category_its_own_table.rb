class MakeServiceCategoryItsOwnTable < ActiveRecord::Migration
  def up
  	add_column :services, :service_category_id, :integer
  	remove_column :services, :category
  end

  def down
  	remove_column :services, :service_category_id
  	add_column :services, :category, :string
  end
end



