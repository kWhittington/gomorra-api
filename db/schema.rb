ActiveRecord::Schema.define(version: 20150524160858) do

  create_table "gangs", force: :cascade do |t|
    t.string   "name",       null: false
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "gangs", ["name"], name: "index_gangs_on_name", unique: true

end
