class Tag < ApplicationRecord
    # タグは複数の投稿を持つ　それは、post_tagsを通じて参照できる
  has_many :posts,through: :post_tags
  validates :name, uniqueness: true, presence: true
end
