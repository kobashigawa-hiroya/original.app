class Absence < ApplicationRecord
  ABSENCE_LIST = %w[その他 インフルエンザ 溶連菌 コロナ 結膜炎]
  validates :title, inclusion: { in: ABSENCE_LIST }
  belongs_to :app
end
