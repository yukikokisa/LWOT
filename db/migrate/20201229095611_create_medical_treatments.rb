class CreateMedicalTreatments < ActiveRecord::Migration[6.0]
  def change
    create_table :medical_treatments do |t|
      t.references :patient,        null: false,    foreign_key: true
      t.integer    :treatment_content_id,  null:false
      t.text       :text,  null:false
      t.timestamps
    end
  end
end
