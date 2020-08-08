class SaturdayApplication < ApplicationRecord
  SATURDAY_APPLICATION_LIST = %w[その他 仕事の為 病院受診の為 私用の為]
  validates :content, inclusion: { in: SATURDAY_APPLICATION_LIST }
  belongs_to :app
end
