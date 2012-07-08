class AddAttachmentLogoToMarks < ActiveRecord::Migration
  def self.up
    change_table :marks do |t|
      t.has_attached_file :logo
    end
  end

  def self.down
    drop_attached_file :marks, :logo
  end
end
