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

ActiveRecord::Schema.define(version: 20190408011851) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "categories", force: :cascade do |t|
    t.text "name"
    t.text "top_category"
    t.text "sub_category"
    t.integer "order"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "entries", force: :cascade do |t|
    t.bigint "category_id"
    t.bigint "user_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_entries_on_category_id"
    t.index ["user_id"], name: "index_entries_on_user_id"
  end

  create_table "entry_questions", force: :cascade do |t|
    t.bigint "entry_id"
    t.bigint "question_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["entry_id"], name: "index_entry_questions_on_entry_id"
    t.index ["question_id"], name: "index_entry_questions_on_question_id"
  end

  create_table "questions", force: :cascade do |t|
    t.bigint "category_id"
    t.text "text"
    t.boolean "required"
    t.integer "order"
    t.text "type"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["category_id"], name: "index_questions_on_category_id"
  end

  create_table "users", force: :cascade do |t|
    t.text "first_name"
    t.text "last_name"
    t.boolean "active"
    t.text "email"
    t.text "user_name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "entries", "categories"
  add_foreign_key "entries", "users"
  add_foreign_key "entry_questions", "entries"
  add_foreign_key "entry_questions", "questions"
  add_foreign_key "questions", "categories"
end
