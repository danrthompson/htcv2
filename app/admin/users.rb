ActiveAdmin.register User do
  controller do 
  	with_role :active_admin

    def update
      if params[:user][:password].blank?
        params[:user].delete("password")
        params[:user].delete("password_confirmation")
      end
      super
    end

  end
	index do
		column "Id" do |user|
			link_to user.id, active_admin_interface_user_path(user)
		end
		column :username
		column :email
		column :administrator
		column :sign_in_count
		column :last_sign_in_at
		column :last_sign_in_ip
		column :created_at
		column :updated_at
		actions
	end

	show do |user|
	  attributes_table do
	    row :id
	    row :username
	    row :email
	    row :administrator
	    row :sign_in_count
	    row :last_sign_in_at
	    row :last_sign_in_ip
	    row :created_at
	    row :updated_at
	  end
	end


	form do |f|
	  f.inputs do
	    f.input :username
	    f.input :email
	    f.input :password
	    f.input :password_confirmation
	    f.input :administrator
	  end
	  f.actions
	end
end

