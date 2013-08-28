ActiveAdmin.register ResourceCategory do
  index do
  	column "Id" do |resource_category|
  		link_to resource_category.id, active_admin_interface_resource_category_path(resource_category)
  	end
  	column :title
    column :rank
    column :seo_url
    column "Resource Category" do |resource_category|
      if resource_category.resource_category then
        link_to resource_category.resource_category.title, active_admin_interface_resource_category_path(resource_category.resource_category)
      else
        "None"
      end
    end
    column "Image" do |resource_category|
      if resource_category.image? then
        link_to "Yes", active_admin_interface_resource_category_path(resource_category)
      else
        "None"
      end
    end
    column :image_updated_at
  	column :created_at
  	column :updated_at
  	actions
  end

  show do |resource_category|
    attributes_table do
      row :id
      row :title
      row :rank
      row :seo_url
      row "Resource Category" do |resource_category|
        if resource_category.resource_category then
          link_to resource_category.resource_category.title, active_admin_interface_resource_category_path(resource_category.resource_category)
        else
          "None"
        end
      end
      row "Image" do |resource_category|
        if resource_category.image? then
          image_tag(resource_category.image.url, width: '150px')
        else
          "None"
        end
      end
      row :image_updated_at
      row :created_at
      row :updated_at
    end
  end
end


