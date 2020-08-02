class Letter < ApplicationRecord
  belongs_to :app
  belongs_to :post
  validates :app_id, uniqueness: { scope: :post_id }
  validates :body_temperature, numericality: true
end
