class AddDescriptionsToResourceAndServiceCategories < ActiveRecord::Migration
  def change
  	add_column :resource_categories, :description, :text
  	add_column :service_categories, :description, :text
  end
end
