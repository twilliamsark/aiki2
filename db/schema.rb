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

ActiveRecord::Schema.define(version: 20140519201124) do

  create_table "applied_techniques", force: true do |t|
    t.integer  "technique_id"
    t.integer  "attack_id"
    t.integer  "stance_id"
    t.integer  "waza_id"
    t.integer  "rank_id"
    t.integer  "direction_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "art_id"
    t.integer  "kata_id"
    t.integer  "testing_level_id"
  end

  add_index "applied_techniques", ["art_id"], name: "index_applied_techniques_on_art_id"
  add_index "applied_techniques", ["attack_id"], name: "index_applied_techniques_on_attack_id"
  add_index "applied_techniques", ["direction_id"], name: "index_applied_techniques_on_direction_id"
  add_index "applied_techniques", ["kata_id"], name: "index_applied_techniques_on_kata_id"
  add_index "applied_techniques", ["rank_id"], name: "index_applied_techniques_on_rank_id"
  add_index "applied_techniques", ["stance_id"], name: "index_applied_techniques_on_stance_id"
  add_index "applied_techniques", ["technique_id"], name: "index_applied_techniques_on_technique_id"
  add_index "applied_techniques", ["testing_level_id"], name: "index_applied_techniques_on_testing_level_id"
  add_index "applied_techniques", ["waza_id"], name: "index_applied_techniques_on_waza_id"

  create_table "arts", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attacks", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "directions", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "kata", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "ranks", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.string   "belt"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "position",    default: 99
  end

  create_table "stances", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "techniques", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "testing_levels", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "videos", force: true do |t|
    t.integer  "applied_technique_id"
    t.string   "youtube_code",         default: "n/a"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "videos", ["applied_technique_id"], name: "index_videos_on_applied_technique_id"

  create_table "wazas", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

end
