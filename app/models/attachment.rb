class Attachment < ApplicationRecord
  	mount_uploader :attachment, ImageUploader
	belongs_to :attachable, polymorphic: true
end

	
