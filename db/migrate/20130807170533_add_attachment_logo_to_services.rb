class AddAttachmentLogoToServices < ActiveRecord::Migration
  def self.up
    change_table :services do |t|
      t.attachment :logo
    end
  end

  def self.down
    drop_attached_file :services, :logo
  end
end
