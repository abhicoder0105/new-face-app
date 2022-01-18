class Blog < ApplicationRecord
  # after_save :save_attachment 

  belongs_to :user
  has_many :blog_attachments 
  # has_many :category
  # has_many :sub_category 
  # accepts_nested_attributes_for :category,allow_destroy: true
  # accepts_nested_attributes_for :sub_category
end
  