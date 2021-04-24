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

ActiveRecord::Schema.define(version: 2021_04_24_145713) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "alternatives", force: :cascade do |t|
    t.bigint "question_id"
    t.text "description"
    t.boolean "is_true"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["question_id"], name: "index_alternatives_on_question_id"
  end

  create_table "brazil_states", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "hierarchies", force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "olympics", force: :cascade do |t|
    t.string "title"
    t.string "description"
    t.integer "edition"
    t.date "start_registration"
    t.date "end_registration"
    t.string "image"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "questions", force: :cascade do |t|
    t.text "title"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "responsables", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "olympic_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["olympic_id"], name: "index_responsables_on_olympic_id"
    t.index ["user_id"], name: "index_responsables_on_user_id"
  end

  create_table "subscriptions", force: :cascade do |t|
    t.bigint "user_id"
    t.bigint "olympic_id"
    t.bigint "brazil_state_id"
    t.string "county"
    t.text "school"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["brazil_state_id"], name: "index_subscriptions_on_brazil_state_id"
    t.index ["olympic_id"], name: "index_subscriptions_on_olympic_id"
    t.index ["user_id"], name: "index_subscriptions_on_user_id"
  end

  create_table "tests", force: :cascade do |t|
    t.text "description"
    t.date "start_test"
    t.date "end_test"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

  create_table "users", force: :cascade do |t|
    t.string "email", default: "", null: false
    t.string "encrypted_password", default: "", null: false
    t.string "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.string "name"
    t.string "cpf"
    t.string "authentication_token", limit: 30
    t.bigint "hierarchy_id"
    t.index ["authentication_token"], name: "index_users_on_authentication_token", unique: true
    t.index ["email"], name: "index_users_on_email", unique: true
    t.index ["hierarchy_id"], name: "index_users_on_hierarchy_id"
    t.index ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true
  end

  add_foreign_key "alternatives", "questions"
  add_foreign_key "responsables", "olympics"
  add_foreign_key "responsables", "users"
  add_foreign_key "subscriptions", "brazil_states"
  add_foreign_key "subscriptions", "olympics"
  add_foreign_key "subscriptions", "users"
  add_foreign_key "users", "hierarchies"
end
