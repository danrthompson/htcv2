ActiveAdmin.register VideoRequest do
  controller do 
    with_role :active_admin

    def update
      if params[:video_request][:user].blank?
        params[:video_request][:user] = -1
      end
      super
    end

  end
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

  form do |f|
    f.inputs do
      f.input :message
      f.input :location
      f.input :budget
      f.input :timeline
      f.input :email
      f.input :user
    end
    f.actions
  end
end
