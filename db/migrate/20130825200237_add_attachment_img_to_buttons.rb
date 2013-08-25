class AddAttachmentImgToButtons < ActiveRecord::Migration
  def self.up
    change_table :buttons do |t|
      t.attachment :img
    end
  end

  def self.down
    drop_attached_file :buttons, :img
  end
end
