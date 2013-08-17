class AddRankToServiceCategories < ActiveRecord::Migration
  def change
  	add_column :service_categories, :rank, :integer
  end
end
