class AddAttachmentImageToAdvicePosts < ActiveRecord::Migration
  def self.up
    change_table :advice_posts do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :advice_posts, :image
  end
end
