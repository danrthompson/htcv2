class ChangeTitlesOnAdvice < ActiveRecord::Migration
  def up
  	remove_column :advice_posts, :title
  end

  def down
  	add_column :advice_posts, :title, :string
  end
end
