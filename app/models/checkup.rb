class Checkup < ApplicationRecord
  belongs_to :patient, optional: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :consultation_content

  validates :consultation_content_id, presence: true
  validates :detail,  length: { maximum: 200 }
end
