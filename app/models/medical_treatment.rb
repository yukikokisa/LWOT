class MedicalTreatment < ApplicationRecord
  belongs_to :patient, optional: true

  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :treatment_content

  validates :treatment_content_id, presence: true
  validates :text,  length: { maximum: 200 }
end
