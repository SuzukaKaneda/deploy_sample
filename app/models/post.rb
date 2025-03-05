class Post < ApplicationRecord
  mount_uploader :post_image, PostImageUploader
  has_many :post_tags,dependent: :destroy
  has_many :tags,through: :post_tags
end
