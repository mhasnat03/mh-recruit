class AddAttachmentTranscriptToApplications < ActiveRecord::Migration
  def self.up
    change_table :applications do |t|
      t.attachment :transcript
    end
  end

  def self.down
    remove_attachment :applications, :transcript
  end
end
