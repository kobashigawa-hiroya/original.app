class Contact < ApplicationRecord
  belongs_to :app
  has_rich_text :content
end
