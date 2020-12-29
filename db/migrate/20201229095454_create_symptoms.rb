class CreateSymptoms < ActiveRecord::Migration[6.0]
  def change
    create_table :symptoms do |t|
      t.references :patient,       null: false,    foreign_key: true
      t.date       :oneset_time  
      t.string     :body_region
      t.text       :condition
      t.timestamps
    end
  end
end
