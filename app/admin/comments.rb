ActiveAdmin.register Comment do
  controller do 
    with_role :active_admin

    def update
      if params[:comment][:user_id].blank?
        params[:comment][:user_id] = -1
      end
      super
    end

  end
  index do
  	column "Id" do |comment|
  		link_to comment.id, active_admin_interface_comment_path(comment)
  	end
  	column :body
  	column "Commentable Type" do |comment|
  		if comment.commentable then
	  		comment.commentable.type
	  	else
	  		"None"
	  	end
  	end
  	column "Commentable" do |comment|
  		if comment.commentable then
	  		link_to truncate(comment.commentable.body, length: 25), polymorphic_path(comment.commentable)
	  	else
	  		"None"
	  	end
  	end
  	column "User" do |comment|
  		if comment.user then
	  		link_to comment.user.username, active_admin_interface_user_path(comment.user)
	  	else
	  		"None"
	  	end
	  end
  	column :created_at
  	column :updated_at
  	actions
  end

  show do |comment|
    attributes_table do
      row :id
      row :body
      row "Commentable Type" do |comment|
        if comment.commentable then
          comment.commentable.type
        else
          "None"
        end
      end
      row "Commentable" do |comment|
        if comment.commentable then
          link_to comment.commentable.body, polymorphic_path(comment.commentable)
        else
          "None"
        end
      end
      row "User" do |comment|
        if comment.user then
          link_to comment.user.username, active_admin_interface_user_path(comment.user)
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
