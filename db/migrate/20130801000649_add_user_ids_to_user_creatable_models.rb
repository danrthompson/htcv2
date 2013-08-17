class AddUserIdsToUserCreatableModels < ActiveRecord::Migration
  def change
  	add_column :advice_posts, :user_id, :integer, default: 0, null: false
  	add_index :advice_posts, :user_id
  end
end
