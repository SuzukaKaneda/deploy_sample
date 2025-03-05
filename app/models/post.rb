class Post < ApplicationRecord
  mount_uploader :post_image, PostImageUploader
  has_many :post_tags,dependent: :destroy
  has_many :tags,through: :post_tags

  scope :with_tag, ->(tag_id) { joins(:post_tags).where(post_tags: { tag_id: tag_id }) }
end
