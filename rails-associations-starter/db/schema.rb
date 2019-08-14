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

ActiveRecord::Schema.define(version: 2018_09_24_145148) do

  create_table "koalas", force: :cascade do |t|
    t.string "name"
    t.string "favorite_hobby"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pet_rocks", force: :cascade do |t|
    t.string "name"
    t.integer "koala_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["koala_id"], name: "index_pet_rocks_on_koala_id"
  end

end
