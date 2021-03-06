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

ActiveRecord::Schema.define(version: 2020_04_04_135839) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "pgcrypto"
  enable_extension "plpgsql"

  create_table "countries", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "covid_dailies", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.uuid "country_id"
    t.integer "total_cases", default: 0, null: false
    t.integer "today_cases", default: 0, null: false
    t.integer "total_deaths", default: 0, null: false
    t.integer "today_deaths", default: 0, null: false
    t.integer "recovered", default: 0, null: false
    t.integer "active", default: 0, null: false
    t.integer "critical", default: 0, null: false
    t.float "case_per_million", default: 0.0, null: false
    t.float "death_per_million", default: 0.0, null: false
    t.datetime "updated"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "country_name"
    t.index ["country_id"], name: "index_covid_dailies_on_country_id"
  end

  create_table "users", id: :uuid, default: -> { "gen_random_uuid()" }, force: :cascade do |t|
    t.string "line_id"
    t.string "line_name"
    t.boolean "line_notifications"
    t.string "line_countries"
    t.datetime "line_deleted_at"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
