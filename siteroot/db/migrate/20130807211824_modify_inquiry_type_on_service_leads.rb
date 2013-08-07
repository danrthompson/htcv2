class ModifyInquiryTypeOnServiceLeads < ActiveRecord::Migration
  def change
  	remove_column :service_leads, :inquiry_type
  	add_column :service_leads, :inquiry_type_part_1, :string
  	add_column :service_leads, :inquiry_type_part_2, :string
  end
end
