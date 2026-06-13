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

ActiveRecord::Schema[8.1].define(version: 2026_06_13_084212) do
  create_table "osrspolls", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "question"
    t.datetime "updated_at", null: false
  end

  create_table "poll_options", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "osrspoll_id", null: false
    t.string "title"
    t.datetime "updated_at", null: false
    t.index ["osrspoll_id"], name: "index_poll_options_on_osrspoll_id"
  end

  create_table "sessions", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "users", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.string "password_digest"
    t.datetime "updated_at", null: false
    t.string "username"
  end

  create_table "votes", force: :cascade do |t|
    t.datetime "created_at", null: false
    t.integer "poll_option_id", null: false
    t.datetime "updated_at", null: false
    t.integer "user_id", null: false
    t.index ["poll_option_id"], name: "index_votes_on_poll_option_id"
    t.index ["user_id"], name: "index_votes_on_user_id"
  end

  add_foreign_key "poll_options", "osrspolls"
  add_foreign_key "votes", "poll_options"
  add_foreign_key "votes", "users"
end
