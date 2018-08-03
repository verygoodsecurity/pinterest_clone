#app/models/document.rb
class Document < ActiveRecord
    belongs_to :pin
    has_attached_file :file
    validates_attachment :file, presence: true, content_type: { content_type: "application/pdf" }
    end