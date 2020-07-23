class Menu < ApplicationRecord
  mount_uploader :image, ImageUploader
  mount_uploader :snack_image, ImageUploader
end
