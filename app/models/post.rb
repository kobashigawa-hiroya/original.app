class Post < ApplicationRecord
  mount_uploader :image, ImageUploader
  validates :title, presence: true, lenght: { maximum: 30 }
  validates :content, presence: true, lenght: { maximum: 100 }
end
