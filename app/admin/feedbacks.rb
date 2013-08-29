ActiveAdmin.register Feedback do
  controller do 
    with_role :active_admin

    def update
      if params[:feedback][:user_id].blank?
        params[:feedback][:user_id] = -1
      end
      super
    end

  end
  index do
  	column "Id" do |feedback|
  		link_to feedback.id, active_admin_interface_feedback_path(feedback)
  	end
  	column :message
  	column :email
  	column "User" do |feedback|
  		if feedback.user then
	  		link_to feedback.user.username, active_admin_interface_user_path(feedback.user)
	  	else
	  		"None"
	  	end
	  end
  	column :created_at
  	column :updated_at
  	actions
  end

  show do |feedback|
    attributes_table do
      row :id
      row :message
      row :email
      row "User" do |feedback|
        if feedback.user then
          link_to feedback.user.username, active_admin_interface_user_path(feedback.user)
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
      f.input :email
      f.input :user
    end
    f.actions
  end
end