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

ActiveRecord::Schema.define(version: 20161028102636) do

  create_table "promotions", force: :cascade do |t|
    t.date     "date"
    t.boolean  "temporary"
    t.integer  "soldier_id"
    t.integer  "rank_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["rank_id"], name: "index_promotions_on_rank_id"
    t.index ["soldier_id"], name: "index_promotions_on_soldier_id"
  end

  create_table "ranks", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "soldiers", force: :cascade do |t|
    t.string   "lastname"
    t.string   "firstname"
    t.date     "date_of_birth"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
    t.string   "place_of_birth"
    t.date     "date_of_death"
    t.string   "place_of_death"
  end

end
