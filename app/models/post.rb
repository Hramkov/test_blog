class Post < ActiveRecord::Base
  resourcify
	mount_uploader :image, ImageUploader
	belongs_to :user
	is_impressionable
end
