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

ActiveRecord::Schema.define(version: 20141212144914) do

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
    t.integer  "position",          default: 0
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

  create_table "senseis", force: true do |t|
    t.string   "name"
    t.string   "dojo"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  create_table "stances", force: true do |t|
    t.string   "name"
    t.string   "description"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_description", limit: 20
  end

  create_table "styles", force: true do |t|
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

  create_table "user_notes", force: true do |t|
    t.text     "note"
    t.integer  "user_id"
    t.integer  "waza_format_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "user_notes", ["user_id"], name: "index_user_notes_on_user_id"
  add_index "user_notes", ["waza_format_id"], name: "index_user_notes_on_waza_format_id"

  create_table "user_remember_tokens", force: true do |t|
    t.string   "remember_token"
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "ip"
    t.datetime "expires_at"
    t.datetime "signed_out_at"
  end

  add_index "user_remember_tokens", ["signed_out_at", "remember_token", "expires_at"], name: "index_urt_search"
  add_index "user_remember_tokens", ["user_id"], name: "index_user_remember_tokens_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email"
    t.string   "password_digest"
    t.string   "remember_token"
    t.boolean  "admin"
    t.integer  "sign_in_count"
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "demo"
    t.date     "demo_user_expires_on"
    t.boolean  "cotu",                 default: false
    t.boolean  "reviewer",             default: false
  end

  create_table "videos", force: true do |t|
    t.string   "youtube_code",     default: "n/a"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.boolean  "primary",          default: false
    t.string   "description"
    t.boolean  "visible",          default: false
    t.boolean  "for_demo",         default: false
    t.string   "copyright"
    t.integer  "sensei_id"
    t.integer  "style_id"
    t.integer  "attack_height_id"
    t.string   "name"
    t.integer  "kata_id"
    t.integer  "kata_number"
  end

  add_index "videos", ["attack_height_id"], name: "index_videos_on_attack_height_id"
  add_index "videos", ["kata_id"], name: "index_videos_on_kata_id"
  add_index "videos", ["sensei_id"], name: "index_videos_on_sensei_id"
  add_index "videos", ["style_id"], name: "index_videos_on_style_id"

  create_table "waza_format_videos", force: true do |t|
    t.integer  "waza_format_id"
    t.integer  "video_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "waza_format_videos", ["video_id"], name: "index_waza_format_videos_on_video_id"
  add_index "waza_format_videos", ["waza_format_id"], name: "index_waza_format_videos_on_waza_format_id"

  create_table "waza_formats", force: true do |t|
    t.integer  "waza_id"
    t.integer  "format_id"
    t.integer  "rank_id"
    t.boolean  "on_test",     default: false
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "description"
  end

  add_index "waza_formats", ["format_id"], name: "index_waza_formats_on_format_id"
  add_index "waza_formats", ["rank_id"], name: "index_waza_formats_on_rank_id"
  add_index "waza_formats", ["waza_id"], name: "index_waza_formats_on_waza_id"

  create_table "wazas", force: true do |t|
    t.integer  "technique_id"
    t.integer  "attack_id"
    t.integer  "stance_id"
    t.integer  "direction_id"
    t.string   "name"
    t.datetime "created_at"
    t.datetime "updated_at"
    t.string   "short_description", limit: 20
    t.string   "description"
    t.integer  "position"
    t.text     "keywords"
  end

  add_index "wazas", ["attack_id"], name: "index_wazas_on_attack_id"
  add_index "wazas", ["direction_id"], name: "index_wazas_on_direction_id"
  add_index "wazas", ["stance_id"], name: "index_wazas_on_stance_id"
  add_index "wazas", ["technique_id"], name: "index_wazas_on_technique_id"

end
