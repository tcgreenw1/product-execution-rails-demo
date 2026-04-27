# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[8.1].define(version: 2026_04_27_170928) do
  create_table "features", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.text "description"
    t.string "priority"
    t.string "status"
    t.string "title"
    t.datetime "updated_at", null: false
  end

  create_table "stories", force: :cascade do |t|
    t.text "acceptance_criteria"
    t.datetime "created_at", null: false
    t.text "description"
    t.integer "feature_id", null: false
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["feature_id"], name: "index_stories_on_feature_id"
  end

  create_table "tasks", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "status"
    t.integer "story_id", null: false
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["story_id"], name: "index_tasks_on_story_id"
  end

  add_foreign_key "stories", "features"
  add_foreign_key "tasks", "stories"
end
