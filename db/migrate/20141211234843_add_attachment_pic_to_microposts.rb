class AddAttachmentPicToMicroposts < ActiveRecord::Migration
  def self.up
    change_table :microposts do |t|
      t.attachment :pic
    end
  end

  def self.down
    remove_attachment :microposts, :pic
  end
end
