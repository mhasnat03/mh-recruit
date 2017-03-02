class AddAttachmentOtherDocumentToApplications < ActiveRecord::Migration
  def self.up
    change_table :applications do |t|
      t.attachment :other_document
    end
  end

  def self.down
    remove_attachment :applications, :other_document
  end
end
