class Post < ActiveRecord::Base
	mount_uploader :image, ImageUploader
	belongs_to :user
	is_impressionable
end
