class Symptom < ApplicationRecord
  belongs_to :patient, optional: true

  with_options presence: true do
    validates :oneset_time
    validates :body_region,  length: { maximum: 20 }
    validates :condition,    length: { maximum: 200 }
  end
end
