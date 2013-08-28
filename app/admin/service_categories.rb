ActiveAdmin.register ServiceCategory do
  index do
  	column "Id" do |service_category|
  		link_to service_category.id, active_admin_interface_service_category_path(service_category)
  	end
  	column :title
  	column :rank
  	column :seo_url
  	column :created_at
  	column :updated_at
  	actions
  end

  show do |service_category|
    attributes_table do
      row :id
      row :title
      row :rank
      row :seo_url
      row :created_at
      row :updated_at
    end
  end
end


