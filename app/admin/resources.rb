ActiveAdmin.register Resource do
	controller do 
	  def update
	    if params[:resource][:seo_url].blank?
	      params[:resource].delete("seo_url")
	    end
	    super
	  end
	end
	index do
		column "Id" do |resource|
			link_to resource.id, active_admin_interface_resource_path(resource)
		end
		column :title
		column :description
		column "Resource Category" do |resource|
			if resource.resource_category then
				link_to resource.resource_category.title, active_admin_interface_resource_category_path(resource.resource_category)
			else
				"None"
			end
		end
		column :seo_url
		column :rank
		column :out_link
		column :created_at
		column :updated_at
		actions
	end

	show do |resource|
	  attributes_table do
	    row :id
	    row :title
	    row :description
	    row "Resource Category" do |resource|
	    	if resource.resource_category then
	    		link_to resource.resource_category.title, active_admin_interface_resource_category_path(resource.resource_category)
	    	else
	    		"None"
	    	end
	    end
	    row :seo_url
	    row :rank
	    row :out_link
	    row :page_body
	    row :page_body_html
	    row :created_at
	    row :updated_at
	  end
	end
	form do |f|
	  f.inputs do
	    f.input :title
	    f.input :description
	    f.input :seo_url
	    f.input :rank
	    f.input :resource_category
	    f.input :out_link
	    f.input :page_body
	  end
	  f.actions
	end

end

