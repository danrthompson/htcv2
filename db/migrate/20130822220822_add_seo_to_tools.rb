class AddSeoToTools < ActiveRecord::Migration
  def change
  	add_column :service_categories, :seo_url, :string, null:  false, default:  ""
  	add_column :resource_categories, :seo_url, :string, null:  false, default:  ""
  end
end