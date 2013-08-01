class AddUserIdsToUserCreatableModels < ActiveRecord::Migration
  def change
  	add_column :advice_posts, :user_id, :integer, :null => false
  	add_index :advice_posts, :user_id
  end
end
