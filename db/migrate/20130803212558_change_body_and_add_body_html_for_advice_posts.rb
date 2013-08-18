class ChangeBodyAndAddBodyHtmlForAdvicePosts < ActiveRecord::Migration
  def up
  	rename_column :advice_posts, :post_text, :body
  	add_column :advice_posts, :video_link, :text
  	add_column :advice_posts, :video_html, :text
  end

  def down
  	rename_column :advice_posts, :body, :post_text
  	remove_column :advice_posts, :video_link
  	remove_column :advice_posts, :video_html
  end
end
