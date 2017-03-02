class AddAttachmentRecommendationToApplications < ActiveRecord::Migration
  def self.up
    change_table :applications do |t|
      t.attachment :recommendation
    end
  end

  def self.down
    remove_attachment :applications, :recommendation
  end
end
