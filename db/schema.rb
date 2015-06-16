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

ActiveRecord::Schema.define(version: 20150616024444) do

  create_table "actions", force: :cascade do |t|
    t.string   "name"
    t.string   "text"
    t.integer  "cost"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "deeds", force: :cascade do |t|
    t.string   "name"
    t.integer  "cost"
    t.integer  "production"
    t.integer  "control"
    t.string   "keywords"
    t.string   "text"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "dudes", force: :cascade do |t|
    t.string   "name"
    t.string   "bullet_type"
    t.integer  "bullet_quantity"
    t.integer  "influence"
    t.integer  "control"
    t.integer  "upkeep"
    t.integer  "cost"
    t.string   "keywords"
    t.string   "text"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "gangs", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "gangs", ["name"], name: "index_gangs_on_name", unique: true

  create_table "goods", force: :cascade do |t|
    t.integer  "cost"
    t.string   "name"
    t.string   "bullet_type"
    t.integer  "bullet_quantity"
    t.integer  "influence"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "playing_cards", force: :cascade do |t|
    t.string   "suit"
    t.string   "rank"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "ranks", force: :cascade do |t|
    t.string   "name"
    t.integer  "value"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "ranks", ["name"], name: "index_ranks_on_name", unique: true
  add_index "ranks", ["value"], name: "index_ranks_on_value", unique: true

  create_table "suits", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "suits", ["name"], name: "index_suits_on_name", unique: true

end
