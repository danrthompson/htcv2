ActiveAdmin.register VideoRequest do
  index do
  	column "Id" do |video_request|
  		link_to video_request.id, active_admin_interface_video_request_path(video_request)
  	end
    column :message
    column :location
    column :budget
    column :timeline
  	column :email
  	column "User" do |video_request|
  		if video_request.user then
	  		link_to video_request.user.username, active_admin_interface_user_path(video_request.user)
	  	else
	  		"None"
	  	end
	  end
  	column :created_at
  	column :updated_at
    actions
  end

  show do |video_request|
    attributes_table do
      row :id
      row :message
      row :location
      row :budget
      row :timeline
      row :email
      row "User" do |video_request|
        if video_request.user then
          link_to video_request.user.username, active_admin_interface_user_path(video_request.user)
        else
          "None"
        end
      end
      row :created_at
      row :updated_at
    end
  end
end
