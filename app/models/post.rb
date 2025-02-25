class Post < ApplicationRecord
    mount_uploader :post_image, PostImageUploader

    

    validates :post_image, format: {
      with: /\.(jpg|jpeg|png|webp)\z/i, # jpg, jpeg, png, gif形式を許可
      message: 'は JPG, JPEG, PNG, webp のいずれかの形式でなければなりません'
    }

  def post_image_webp
    post_image.variant(format: :webp).processed
  end
end
