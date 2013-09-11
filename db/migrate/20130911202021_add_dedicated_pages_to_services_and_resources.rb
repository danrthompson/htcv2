class AddDedicatedPagesToServicesAndResources < ActiveRecord::Migration
  def up
  	remove_column :resources, :featured
  	remove_column :resources, :featured_rank
  	add_column :resources, :page_body, :text
  	add_column :resources, :page_body_html, :text
    add_column :resources, :seo_url, :string

  	remove_column :services, :subtitle
  	add_column :services, :page_body, :text
  	add_column :services, :page_body_html, :text
    add_column :services, :seo_url, :string

    add_index :resources, :seo_url, :unique => true
    add_index :services, :seo_url, :unique => true

  	Service.all.each do |this_service|
  		this_service.page_body = this_service.description
  		this_service.save
  	end
  	Resource.all.each do |resource|
  		resource.page_body = resource.description
  		resource.save
  	end
  end

  def down
    remove_index :resources, :seo_url
    remove_index :services, :seo_url

  	add_column :resources, :featured, :boolean
  	add_column :resources, :featured_rank, :integer
  	remove_column :resources, :page_body
  	remove_column :resources, :page_body_html
    remove_column :resources, :seo_url

  	add_column :services, :subtitle, :string
  	remove_column :services, :page_body
  	remove_column :services, :page_body_html
    remove_column :services, :seo_url
  end
end
