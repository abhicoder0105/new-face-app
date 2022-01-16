class BlogAttachment < ApplicationRecord
	mount_uploaders :attachment, ImageUploader
	belongs_to :blog
end