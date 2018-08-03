class Pin < ActiveRecord::Base
	attr_accessor :document_data
	acts_as_votable
	belongs_to :user
	has_many :documents
	has_attached_file :image, :document_data, :styles => { :medium => "300x300>" }
  validates_attachment_content_type :image || :document_data, :content_type => /\Aimage\/.*\Z/ || "applicaton/pdf" 
end
