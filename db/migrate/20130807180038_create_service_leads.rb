class CreateServiceLeads < ActiveRecord::Migration
  def change
    create_table :service_leads do |t|
      t.string :inquiry_type
      t.text :message
      t.string :email
      t.string :user_name
      t.integer :service_id
      t.integer :user_id
      t.boolean :featured_page
      t.integer :service_rank

      t.timestamps
    end
  end
end
