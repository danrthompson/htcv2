class CreateContentPagesFromBlogPosts < ActiveRecord::Migration
	def change
		add_column :posts, :content_page, :boolean
	end
end
