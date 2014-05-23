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

ActiveRecord::Schema.define(version: 20140523190120) do

  create_table "active_admin_comments", force: true do |t|
    t.string   "namespace"
    t.text     "body"
    t.string   "resource_id",   null: false
    t.string   "resource_type", null: false
    t.integer  "author_id"
    t.string   "author_type"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "active_admin_comments", ["author_type", "author_id"], name: "index_active_admin_comments_on_author_type_and_author_id"
  add_index "active_admin_comments", ["namespace"], name: "index_active_admin_comments_on_namespace"
  add_index "active_admin_comments", ["resource_type", "resource_id"], name: "index_active_admin_comments_on_resource_type_and_resource_id"

  create_table "admin_users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "admin_users", ["email"], name: "index_admin_users_on_email", unique: true
  add_index "admin_users", ["reset_password_token"], name: "index_admin_users_on_reset_password_token", unique: true

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
    t.integer  "format_id"
    t.integer  "attack_height_id"
    t.boolean  "on_test",          default: false
  end

  add_index "applied_techniques", ["art_id"], name: "index_applied_techniques_on_art_id"
  add_index "applied_techniques", ["attack_height_id"], name: "index_applied_techniques_on_attack_height_id"
  add_index "applied_techniques", ["attack_id"], name: "index_applied_techniques_on_attack_id"
  add_index "applied_techniques", ["direction_id"], name: "index_applied_techniques_on_direction_id"
  add_index "applied_techniques", ["format_id"], name: "index_applied_techniques_on_format_id"
  add_index "applied_techniques", ["kata_id"], name: "index_applied_techniques_on_kata_id"
  add_index "applied_techniques", ["rank_id"], name: "index_applied_techniques_on_rank_id"
  add_index "applied_techniques", ["stance_id"], name: "index_applied_techniques_on_stance_id"
  add_index "applied_techniques", ["technique_id"], name: "index_applied_techniques_on_technique_id"
  add_index "applied_techniques", ["waza_id"], name: "index_applied_techniques_on_waza_id"

  create_table "arts", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attack_heights", force: true do |t|
    t.string   "name"
    t.string   "short_description", limit: 20
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "attacks", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_description", limit: 20
  end

  create_table "directions", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_description", limit: 20
  end

  create_table "formats", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_description"
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
    t.integer  "position",                     default: 99
    t.string   "short_description", limit: 20
  end

  create_table "stances", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_description", limit: 20
  end

  create_table "techniques", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_description", limit: 20
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
    t.string   "short_description", limit: 20
  end

end
