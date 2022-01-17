class Blog < ApplicationRecord
  # after_save :save_attachment 

  belongs_to :user
  has_many :blog_attachments  
  accepts_nested_attributes_for :blog_attachments,allow_destroy: true
end
  