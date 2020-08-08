class SaturdayApplication < ApplicationRecord
  SATURDAY＿APPLICATION_LIST = %w[その他 仕事の為 病院受診の為 私用の為]
  validates :content, inclusion: { in: SATURDAY＿APPLICATION_LIST }
  belongs_to :app
end
