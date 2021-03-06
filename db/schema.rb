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

ActiveRecord::Schema.define(version: 2018_10_24_184006) do

  create_table "exercises", force: :cascade do |t|
    t.string "name"
    t.string "form"
    t.integer "part"
    t.string "function"
    t.string "instructions"
    t.integer "time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "muscle_one"
    t.string "muscle_two"
    t.string "equipment"
    t.string "comment"
    t.string "body_part"
  end

  create_table "images", force: :cascade do |t|
    t.integer "exercise_id"
    t.string "image_url"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["exercise_id"], name: "index_images_on_exercise_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "name"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workout_joins", force: :cascade do |t|
    t.integer "workout_id"
    t.integer "exercise_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "workouts", force: :cascade do |t|
    t.integer "user_id"
    t.string "description"
    t.string "name"
    t.integer "rating"
    t.integer "total_time"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "form"
    t.string "function"
  end

end
