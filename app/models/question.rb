class Question < ApplicationRecord
  belongs_to :patient
  has_one :symptom
  has_one :medical_treatment
  has_one :checkup

  accepts_nested_attributes_for :checkup, :medical_treatment, :symptom
end
