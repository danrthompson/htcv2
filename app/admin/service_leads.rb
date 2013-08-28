ActiveAdmin.register ServiceLead do
	index do
		column "Id" do |service_lead|
			link_to service_lead.id, active_admin_interface_service_lead_path(service_lead)
		end
		column :message
		column :inquiry_type_part_1
		column :inquiry_type_part_2
		column :email
		column :user_name
		column :featured_page
		column :service_rank
		column "Service" do |service_lead|
			if service_lead.service then
				link_to service_lead.service.title, active_admin_interface_service_path(service_lead.service)
			else
				"None"
			end
		end
  	column "User" do |service_lead|
  		if service_lead.user then
	  		link_to service_lead.user.username, active_admin_interface_user_path(service_lead.user)
	  	else
	  		"None"
	  	end
	  end
		column :created_at
		column :updated_at
		actions
	end

	show do |service_lead|
	  attributes_table do
	    row :id
  		row :message
  		row :inquiry_type_part_1
  		row :inquiry_type_part_2
  		row :email
  		row :user_name
  		row :featured_page
  		row :service_rank
  		row "Service" do |service_lead|
  			if service_lead.service then
  				link_to service_lead.service.title, active_admin_interface_service_path(service_lead.service)
  			else
  				"None"
  			end
  		end
    	row "User" do |service_lead|
    		if service_lead.user then
  	  		link_to service_lead.user.username, active_admin_interface_user_path(service_lead.user)
  	  	else
  	  		"None"
  	  	end
  	  end
  		row :created_at
  		row :updated_at
	  end
	end
end

