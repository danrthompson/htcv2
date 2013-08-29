ActiveAdmin.register Service do
	controller do 
	  def update
	    if params[:service][:logo].blank?
	      params[:service].delete("logo")
	    end
	    super
	  end

	end
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

	form do |f|
	  f.inputs do
	    f.input :title
	    f.input :description
	    f.input :rank
	    f.input :featured
	    f.input :featured_rank
	    f.input :out_link
	    f.input :service_category
	    f.input :logo
	  end
	  f.actions
	end
end


