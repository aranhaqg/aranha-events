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

ActiveRecord::Schema.define(version: 2019_06_18_204208) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "events", force: :cascade do |t|
    t.string "action", null: false
    t.json "issue_changes"
    t.string "title_changed_from"
    t.string "body_changed_from"
    t.json "assignee"
    t.json "label"
    t.json "repository", null: false
    t.json "sender", null: false
    t.bigint "issue_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["issue_id"], name: "index_events_on_issue_id"
  end

  create_table "issues", force: :cascade do |t|
    t.string "url", null: false
    t.string "repository_url", null: false
    t.string "labels_url", null: false
    t.string "comments_url", null: false
    t.string "events_url", null: false
    t.string "html_url", null: false
    t.integer "node_id", null: false
    t.integer "number", null: false
    t.string "title", null: false
    t.json "user", null: false
    t.json "labels"
    t.string "state", null: false
    t.boolean "locked", default: false, null: false
    t.json "assignee"
    t.json "assignees"
    t.json "milestone"
    t.json "comments"
    t.datetime "closed_at"
    t.string "author_association"
    t.string "body", default: "f", null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "events", "issues"
end
