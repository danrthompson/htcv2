class ImplementResourceCategoriesAndSubcategories < ActiveRecord::Migration
  def up
  	drop_table :resource_subcategories
  	add_column :resource_categories, :resource_category_id, :integer
  	add_column :resource_categories, :rank, :integer
  	add_column :resources, :resource_category_id, :integer
  	remove_column :resources, :category
  	remove_column :resources, :subcategory
  end

  def down
  	raise ActiveRecord::IrreversibleMigration
  end
end
