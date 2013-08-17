class AddLogoProcessingToServices < ActiveRecord::Migration
  def change
  	add_column :services, :logo_processing, :boolean
  end
end
