class AddImageToResourceCategory < ActiveRecord::Migration
  def self.up
    change_table :resource_categories do |t|
      t.attachment :image
    end
  end

  def self.down
    drop_attached_file :resource_categories, :image
  end
end
