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

ActiveRecord::Schema.define(version: 20170918233516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "parks", force: :cascade do |t|
    t.string "states"
    t.string "latLong"
    t.string "description"
    t.string "designation"
    t.string "parkCode"
    t.string "parkId"
    t.string "directionsUrl"
    t.string "fullName"
    t.string "url"
    t.string "weatherInfo"
    t.string "name"
    t.float "rating"
    t.integer "rating_count"
  end

  create_table "ratings", force: :cascade do |t|
    t.integer "value"
    t.integer "park_id"
    t.integer "user_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "email"
    t.string "password_digest"
  end

  create_table "visitorcenters", force: :cascade do |t|
    t.string "name"
    t.string "description"
    t.string "latLong"
    t.string "parkCode"
    t.integer "park_id"
  end

end
