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

ActiveRecord::Schema.define(version: 2021_11_25_173230) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "hellos", force: :cascade do |t|
    t.string "lang"
    t.text "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
  end

  create_table "synonyms", force: :cascade do |t|
    t.bigint "hello_id"
    t.string "word"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.string "status"
    t.index ["hello_id"], name: "index_synonyms_on_hello_id"
  end

  add_foreign_key "synonyms", "hellos"
end
