class CreateCheckups < ActiveRecord::Migration[6.0]
  def change
    create_table :checkups do |t|
      t.references :patient,                 null: false,    foreign_key: true
      t.integer    :consultation_content_id, null: false
      t.text       :detail
      t.timestamps
    end
  end
end
