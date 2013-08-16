class AddPreviewsToBlogPosts < ActiveRecord::Migration
  def change
    add_column :posts, :preview_text, :text
    add_column :posts, :preview_html, :text
  end
end
