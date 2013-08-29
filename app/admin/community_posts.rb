ActiveAdmin.register CommunityPost do
  controller do 
    with_role :active_admin

    def update
      if params[:community_post][:user_id].blank?
        params[:community_post][:user_id] = -1
      end
      super
    end

  end
  index do
  	column "Id" do |post|
  		link_to post.id, active_admin_interface_community_post_path(post)
  	end
  	column :body
  	column "User" do |post|
  		if post.user then
	  		link_to post.user.username, active_admin_interface_user_path(post.user)
	  	else
	  		"None"
	  	end
	  end
  	column :created_at
  	column :updated_at
  	actions
  end

  show do |community_post|
    attributes_table do
      row :id
      row :body
      row "User" do |post|
        if post.user then
          link_to post.user.username, active_admin_interface_user_path(post.user)
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
      f.input :body
      f.input :user
    end
    f.actions
  end
end

