class CreateQuestions < ActiveRecord::Migration[6.0]
  def change
    create_table :questions do |t|
      t.references  :patient,      null: false, foreign_key: true
      t.references  :nurse,        null: false, foreign_key: true
      t.references  :medical_treatments,        foreign_key: true
      t.references  :symptoms,                  foreign_key: true
      t.references  :checkup,                   foreign_key: true
      t.timestamps
    end
  end
end
