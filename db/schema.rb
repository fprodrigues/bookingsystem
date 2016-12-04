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

ActiveRecord::Schema.define(version: 20161121202652) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "buzs", force: :cascade do |t|
    t.integer  "pessoa"
    t.text     "horario"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "com"
    t.string   "fim"
    t.text     "range",                   array: true
  end

  create_table "calendars", force: :cascade do |t|
    t.datetime "inicio"
    t.datetime "fim"
    t.datetime "dia"
    t.integer  "numero"
    t.string   "nome"
    t.string   "funcao"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string   "title"
    t.string   "date_range"
    t.string   "start"
    t.string   "end"
  end

  create_table "settings", force: :cascade do |t|
    t.string   "var",                   null: false
    t.text     "value"
    t.integer  "thing_id"
    t.string   "thing_type", limit: 30
    t.datetime "created_at"
    t.datetime "updated_at"
    t.index ["thing_type", "thing_id", "var"], name: "index_settings_on_thing_type_and_thing_id_and_var", unique: true, using: :btree
  end

end
