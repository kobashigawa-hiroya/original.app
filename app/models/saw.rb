class Saw < ApplicationRecord
  belongs_to :app
  belongs_to :post
  validates :app_id, presence: true, uniqueness: { scope: :post_id }
  validates :post_id, presence: true
end
