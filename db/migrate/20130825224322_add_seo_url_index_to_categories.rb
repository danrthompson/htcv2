class AddSeoUrlIndexToCategories < ActiveRecord::Migration
  def up
  	change_column :resource_categories, :seo_url, :string, :null => true
  	change_column :service_categories, :seo_url, :string, :null => true
  	ResourceCategory.where(seo_url: "").each do |resource_cat|
  		resource_cat.update_attribute(:seo_url, nil)
  	end
  	ServiceCategory.where(seo_url: "").each do |service_cat|
  		service_cat.update_attribute(:seo_url, nil)
  	end
  	add_index :resource_categories, :seo_url, :unique => true
  	add_index :service_categories, :seo_url, :unique => true
  end

  def down
		remove_index :service_categories, :seo_url
  	remove_index :resource_categories, :seo_url
  	change_column :resource_categories, :seo_url, :string, null:  false, default:  ""
  	change_column :service_categories, :seo_url, :string, null:  false, default:  ""
  end
end
