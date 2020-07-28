class Letter < ApplicationRecord
  belongs_to :app
  belongs_to :post
end
