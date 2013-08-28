ActiveAdmin.register Service do
	index do
		column "Id" do |service|
			link_to service.id, active_admin_interface_service_path(service)
		end
		column :title
		column :description
		column :rank
		column :featured
		column :featured_rank
		column :out_link
		column "Service Category" do |service|
			if service.service_category then
				link_to service.service_category.title, active_admin_interface_service_category_path(service.service_category)
			else
				"None"
			end
		end
		column "Logo" do |service|
		  if service.logo? then
		    link_to "Yes", active_admin_interface_service_path(service)
		  else
		    "None"
		  end
		end
		column :created_at
		column :updated_at
		actions
	end

	show do |service|
	  attributes_table do
	    row :id
	    row :title
	    row :description
	    row :rank
	    row :featured
	    row :featured_rank
	    row :out_link
	    row "Service Category" do |service|
	    	if service.service_category then
	    		link_to service.service_category.title, active_admin_interface_service_category_path(service.service_category)
	    	else
	    		"None"
	    	end
	    end
	    row "Logo" do |service|
	      if service.logo? then
	        image_tag(service.logo.url, width: '150px')
	      else
	        "None"
	      end
	    end
	    row :created_at
	    row :updated_at
	  end
	end
end


