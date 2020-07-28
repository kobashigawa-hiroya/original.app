class Post < ApplicationRecord
  belongs_to :app
  has_one :post

  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: { maximum: 50 }
  validates :content, presence: true, length: { maximum: 2000 }
end
