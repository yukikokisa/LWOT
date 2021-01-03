class PatientList < ApplicationRecord


  validates :list, presence: true

  has_one :nurse
  has_many :patients
  has_many :qestions

end
