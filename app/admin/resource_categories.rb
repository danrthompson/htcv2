ActiveAdmin.register ResourceCategory do
  controller do 
    def update
      if params[:resource_category][:image].blank?
        params[:resource_category].delete("image")
      end
      if params[:resource_category][:seo_url].blank?
        params[:resource_category].delete("seo_url")
      end
      super
    end

  end
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

  form do |f|
    f.inputs do
      f.input :title
      f.input :rank
      f.input :seo_url
      f.input :resource_category
      f.input :image
    end
    f.actions
  end
end


