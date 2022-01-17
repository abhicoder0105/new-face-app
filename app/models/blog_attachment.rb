class BlogAttachment < ApplicationRecord
	mount_uploaders :attachment, AttachmentUploader
	belongs_to :blog
end