class AddVideoToBlogPost < ActiveRecord::Migration
  def change
  	add_column :posts, :video, :string
  end
end
