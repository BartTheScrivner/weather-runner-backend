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

ActiveRecord::Schema.define(version: 2020_08_14_224628) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "friendships", force: :cascade do |t|
    t.bigint "friender_id"
    t.bigint "friendee_id"
    t.boolean "accepted", default: false
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["friendee_id"], name: "index_friendships_on_friendee_id"
    t.index ["friender_id"], name: "index_friendships_on_friender_id"
  end

  create_table "runs", force: :cascade do |t|
    t.bigint "user_id"
    t.float "distance"
    t.datetime "start_time"
    t.datetime "end_time"
    t.integer "rating"
    t.datetime "date"
    t.string "location"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_runs_on_user_id"
  end

  create_table "user_preferences", force: :cascade do |t|
    t.float "pop", default: 0.6, null: false
    t.float "min_temp", default: 40.0, null: false
    t.float "max_temp", default: 90.0, null: false
    t.integer "humidity", default: 70, null: false
    t.integer "visibility", default: 0, null: false
    t.float "wind_speed", default: 0.0, null: false
    t.string "cloud_cover", default: "Rain", null: false
    t.bigint "user_id"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
    t.index ["user_id"], name: "index_user_preferences_on_user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "email"
    t.string "password_digest"
    t.integer "weekly_run_quota", default: 3, null: false
    t.string "bio"
    t.string "location"
    t.string "img_url"
    t.datetime "created_at", precision: 6, null: false
    t.datetime "updated_at", precision: 6, null: false
  end

end
