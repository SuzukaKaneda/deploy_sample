class Post < ApplicationRecord
    mount_uploader :post_image, PostImageUploader

  def post_image_webp
    post_image.variant(format: :webp).processed
  end
end
