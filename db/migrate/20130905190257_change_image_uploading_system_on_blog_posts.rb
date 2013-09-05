class ChangeImageUploadingSystemOnBlogPosts < ActiveRecord::Migration
  def up
  	remove_column :posts, :image
		add_attachment :posts, :image
  end

  def down
  	add_column :posts, :image, :string
  	remove_attachment :posts, :image
  end
end
