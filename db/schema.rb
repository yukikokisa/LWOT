# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `rails
# db:schema:load`. When creating a new database, `rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.


ActiveRecord::Schema.define(version: 2021_01_02_133544) do

  create_table "checkups", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.integer "consultation_content_id", null: false
    t.text "detail"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_checkups_on_patient_id"
  end

  create_table "medical_treatments", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.integer "treatment_content_id", null: false
    t.text "text", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_medical_treatments_on_patient_id"
  end

  create_table "nurses", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "employee_number", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reset_password_token"], name: "index_nurses_on_reset_password_token", unique: true
  end

  create_table "patient_lists", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.bigint "nurse_id", null: false
    t.string "list", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["nurse_id"], name: "index_patient_lists_on_nurse_id"
    t.index ["patient_id"], name: "index_patient_lists_on_patient_id"
  end

  create_table "patients", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.string "name", null: false
    t.string "doctor", null: false
    t.string "room_number", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["reset_password_token"], name: "index_patients_on_reset_password_token", unique: true
  end

  create_table "questions", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_questions_on_patient_id"
  end

  create_table "symptoms", options: "ENGINE=InnoDB DEFAULT CHARSET=utf8", force: :cascade do |t|
    t.bigint "patient_id", null: false
    t.date "oneset_time"
    t.string "body_region"
    t.text "condition"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["patient_id"], name: "index_symptoms_on_patient_id"
  end

  add_foreign_key "checkups", "patients"
  add_foreign_key "medical_treatments", "patients"
  add_foreign_key "patient_lists", "nurses"
  add_foreign_key "patient_lists", "patients"

  add_foreign_key "questions", "checkups"
  add_foreign_key "questions", "medical_treatments", column: "medical_treatments_id"
  add_foreign_key "questions", "nurses"

  add_foreign_key "questions", "patients"
  add_foreign_key "symptoms", "patients"
end
