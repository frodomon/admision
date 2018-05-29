# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 2018_05_23_151111) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alianzas", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "bank_accounts", force: :cascade do |t|
    t.bigint "request_id"
    t.bigint "bank_id"
    t.boolean "corriente"
    t.boolean "ahorro"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["bank_id"], name: "index_bank_accounts_on_bank_id"
    t.index ["request_id"], name: "index_bank_accounts_on_request_id"
  end

  create_table "banks", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dependents", force: :cascade do |t|
    t.bigint "request_id"
    t.string "name"
    t.string "last_name"
    t.string "second_last_name"
    t.date "birthdate"
    t.integer "relationship"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["request_id"], name: "index_dependents_on_request_id"
  end

  create_table "economy_activities", force: :cascade do |t|
    t.string "ciiu"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "economy_sectors", force: :cascade do |t|
    t.string "ciiu"
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "job_types", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observation_types", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "observations", force: :cascade do |t|
    t.bigint "observation_type_id"
    t.text "description"
    t.boolean "farakaki"
    t.boolean "wsanchez"
    t.boolean "cchinen"
    t.boolean "akira"
    t.bigint "request_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["observation_type_id"], name: "index_observations_on_observation_type_id"
    t.index ["request_id"], name: "index_observations_on_request_id"
  end

  create_table "products", force: :cascade do |t|
    t.string "nombre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "reniecs", force: :cascade do |t|
    t.string "doi"
    t.string "last_name"
    t.string "second_last_name"
    t.string "name"
    t.string "genre"
    t.date "birthdate"
    t.string "birth_departamento"
    t.string "birth_provincia"
    t.string "birth_distrito"
    t.string "degree"
    t.string "civil_state"
    t.float "height"
    t.date "register"
    t.string "father_name"
    t.string "mother_name"
    t.date "emission_date"
    t.string "restriction"
    t.string "departamento"
    t.string "provincia"
    t.string "distrito"
    t.string "address"
    t.date "due_date"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "requests", force: :cascade do |t|
    t.integer "status", default: 0
    t.string "dni"
    t.string "name"
    t.string "last_name"
    t.string "second_last_name"
    t.date "birthday"
    t.string "genre"
    t.string "civil_state"
    t.string "email"
    t.string "mobile"
    t.string "telephone"
    t.boolean "reniec"
    t.boolean "pep"
    t.bigint "alianza_id"
    t.string "alianza_code"
    t.string "access"
    t.string "address"
    t.integer "number"
    t.string "manzana"
    t.string "lote"
    t.string "apartment"
    t.string "urbanization"
    t.bigint "ubigeo_id"
    t.integer "property_house"
    t.bigint "products_id", default: [], array: true
    t.bigint "job_type_id"
    t.string "job"
    t.string "profession"
    t.bigint "economy_sector_id"
    t.string "company"
    t.bigint "economy_activity_id"
    t.integer "work_years"
    t.string "job_title"
    t.bigint "salary_id"
    t.string "ruc"
    t.string "income"
    t.string "job_access"
    t.string "job_address"
    t.string "job_number"
    t.string "job_manzana"
    t.string "job_lote"
    t.string "job_apartment"
    t.string "job_urbanization"
    t.string "job_telephone"
    t.string "college"
    t.string "spouse_doi"
    t.string "spouse_name"
    t.string "spouse_last_name"
    t.string "spouse_second_last_name"
    t.date "spouse_birthday"
    t.string "spouse_ocupation"
    t.string "spouse_profession"
    t.string "spouse_economy_sector"
    t.string "patron_doi"
    t.string "patron_last_name"
    t.string "patron_name"
    t.string "patron_mobile"
    t.boolean "credito"
    t.boolean "ahorro"
    t.boolean "plazofijo"
    t.boolean "contrato"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["alianza_id"], name: "index_requests_on_alianza_id"
    t.index ["economy_activity_id"], name: "index_requests_on_economy_activity_id"
    t.index ["economy_sector_id"], name: "index_requests_on_economy_sector_id"
    t.index ["job_type_id"], name: "index_requests_on_job_type_id"
    t.index ["products_id"], name: "index_requests_on_products_id"
    t.index ["salary_id"], name: "index_requests_on_salary_id"
    t.index ["ubigeo_id"], name: "index_requests_on_ubigeo_id"
  end

  create_table "roles", force: :cascade do |t|
    t.string "name"
    t.string "resource_type"
    t.bigint "resource_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["name", "resource_type", "resource_id"], name: "index_roles_on_name_and_resource_type_and_resource_id"
    t.index ["resource_type", "resource_id"], name: "index_roles_on_resource_type_and_resource_id"
  end

  create_table "salaries", force: :cascade do |t|
    t.string "range"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ubigeos", force: :cascade do |t|
    t.integer "ug_id"
    t.string "name"
    t.integer "parent_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "last_name"
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "agencia"
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer "sign_in_count", default: 0, null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet "current_sign_in_ip"
    t.inet "last_sign_in_ip"
    t.string "roles_mask"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  create_table "users_roles", id: false, force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "role_id"
    t.index ["role_id"], name: "index_users_roles_on_role_id"
    t.index ["user_id", "role_id"], name: "index_users_roles_on_user_id_and_role_id"
    t.index ["user_id"], name: "index_users_roles_on_user_id"
  end

  add_foreign_key "bank_accounts", "banks"
  add_foreign_key "bank_accounts", "requests"
  add_foreign_key "dependents", "requests"
  add_foreign_key "observations", "observation_types"
  add_foreign_key "observations", "requests"
  add_foreign_key "requests", "alianzas"
  add_foreign_key "requests", "economy_activities"
  add_foreign_key "requests", "economy_sectors"
  add_foreign_key "requests", "job_types"
  add_foreign_key "requests", "salaries"
end
