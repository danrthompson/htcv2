class AddImageProcessingToAdvicePost < ActiveRecord::Migration
  def self.up
    add_column :advice_posts, :image_processing, :boolean
  end

  def self.down
    remove_column :advice_posts, :image_processing
  end
end