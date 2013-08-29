ActiveAdmin.register ToolSuggestion do
	controller do 
	  with_role :active_admin

	  def update
	    if params[:tool_suggestion][:user_id].blank?
	      params[:tool_suggestion][:user_id] = -1
	    end
	    super
	  end

	end
	index do
		column "Id" do |tool_suggestion|
			link_to tool_suggestion.id, active_admin_interface_tool_suggestion_path(tool_suggestion)
		end
		column :tool_name
		column :tool_type
		column :message
		column :email

  	column "User" do |tool_suggestion|
  		if tool_suggestion.user then
	  		link_to tool_suggestion.user.username, active_admin_interface_user_path(tool_suggestion.user)
	  	else
	  		"None"
	  	end
	  end
		column :created_at
		column :updated_at
		actions
	end

	show do |tool_suggestion|
	  attributes_table do
	    row :id
  		row :tool_name
  		row :tool_type
  		row :message
  		row :email

    	row "User" do |tool_suggestion|
    		if tool_suggestion.user then
  	  		link_to tool_suggestion.user.username, active_admin_interface_user_path(tool_suggestion.user)
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
	    f.input :tool_name
	    f.input :tool_type
	    f.input :message
	    f.input :email
	    f.input :user
	  end
	  f.actions
	end
end

