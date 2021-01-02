class PatientList < ApplicationRecord
  has_one :nurse
  has_many :patients
  has_many :qestions
end
