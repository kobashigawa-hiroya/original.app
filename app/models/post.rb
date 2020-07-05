class Post < ApplicationRecord
  belongs_to :app

  mount_uploader :image, ImageUploader
  validates :title, presence: true, length: { maximum: 30 }
  validates :content, presence: true, length: { maximum: 100 }
end
