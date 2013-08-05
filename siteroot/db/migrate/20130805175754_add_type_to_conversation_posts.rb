class AddTypeToConversationPosts < ActiveRecord::Migration
  def change
    add_column :conversation_posts, :type, :string
  end
end
