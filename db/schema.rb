# encoding: UTF-8
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

ActiveRecord::Schema.define(version: 20150610022714) do

  create_table "dudes", force: :cascade do |t|
    t.string   "bullet_type"
    t.integer  "bullets"
    t.integer  "control"
    t.integer  "influence"
    t.integer  "upkeep"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "gangs", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "gangs", ["name"], name: "index_gangs_on_name", unique: true

  create_table "playing_cards", force: :cascade do |t|
    t.integer  "rank_id"
    t.integer  "suit_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "playing_cards", ["rank_id", "suit_id"], name: "index_playing_cards_on_rank_id_and_suit_id", unique: true
  add_index "playing_cards", ["rank_id"], name: "index_playing_cards_on_rank_id"
  add_index "playing_cards", ["suit_id"], name: "index_playing_cards_on_suit_id"

end
