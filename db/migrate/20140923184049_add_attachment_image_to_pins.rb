class AddAttachmentImageToPins < ActiveRecord::Migration
  def self.up
    change_table :pins do |t|
      t.attachment :image || t.attachment :document_data 
    end
  end

  def self.down
    remove_attachment :pins, :image, :document_data
  end
end
