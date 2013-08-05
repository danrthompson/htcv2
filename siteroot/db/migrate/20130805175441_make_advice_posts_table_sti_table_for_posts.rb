class MakeAdvicePostsTableStiTableForPosts < ActiveRecord::Migration
  def up
  	rename_table :advice_posts, :conversation_posts
  end

  def down
  	rename_table :conversation_posts, :advice_posts
  end
end