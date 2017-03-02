class AddAttachmentAvatarToApplications < ActiveRecord::Migration
  def self.up
    change_table :applications do |t|
      t.attachment :avatar
    end
  end

  def self.down
    remove_attachment :applications, :avatar
  end
end
