class AddKickstarterCampaignUrlToBlogPosts < ActiveRecord::Migration
  def change
  	add_column :posts, :about_campaign, :boolean
  	add_column :posts, :out_link, :string
  end
end
