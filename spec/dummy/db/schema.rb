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

ActiveRecord::Schema.define(version: 20150903162747) do

  create_table "acts_as_constrained_date_constraints", force: :cascade do |t|
    t.date    "starts_at"
    t.date    "ends_at"
    t.integer "constrained_id"
    t.string  "constrained_type"
  end

  add_index "acts_as_constrained_date_constraints", ["constrained_type", "constrained_id"], name: "index_date_constraints_on_constrained"

  create_table "acts_as_constrained_model_constraints", force: :cascade do |t|
    t.integer "constraining_id"
    t.string  "constraining_type"
    t.integer "constrained_id"
    t.string  "constrained_type"
  end

  add_index "acts_as_constrained_model_constraints", ["constrained_type", "constrained_id"], name: "index_model_constraints_on_constrained"
  add_index "acts_as_constrained_model_constraints", ["constraining_type", "constraining_id"], name: "index_model_constraints_on_constraining"

  create_table "no_cms_blocks_block_slots", force: :cascade do |t|
    t.integer  "container_id"
    t.string   "container_type"
    t.integer  "block_id"
    t.integer  "position",       default: 0
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
  end

  add_index "no_cms_blocks_block_slots", ["block_id"], name: "index_no_cms_blocks_block_slots_on_block_id"
  add_index "no_cms_blocks_block_slots", ["container_type", "container_id"], name: "index_no_cms_blocks_block_slots_on_container_type_and_id"
  add_index "no_cms_blocks_block_slots", ["parent_id"], name: "index_no_cms_blocks_block_slots_on_parent_id"

  create_table "no_cms_blocks_block_translations", force: :cascade do |t|
    t.integer "no_cms_blocks_block_id"
    t.string  "locale"
    t.text    "fields_info",            limit: 4294967295
    t.boolean "draft"
  end

  add_index "no_cms_blocks_block_translations", ["no_cms_blocks_block_id"], name: "no_cms_blocks_blocks_translations_block_id"

  create_table "no_cms_blocks_blocks", force: :cascade do |t|
    t.datetime "created_at"
    t.datetime "updated_at"
    t.integer  "parent_id"
    t.integer  "lft"
    t.integer  "rgt"
    t.integer  "depth"
    t.integer  "position"
    t.text     "fields_info"
    t.string   "layout"
  end

  create_table "page_constrained_views", force: :cascade do |t|
    t.integer  "page_id"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
    t.date     "single_date_constraint_starts_at"
    t.date     "single_date_constraint_ends_at"
    t.string   "skeleton"
  end

  add_index "page_constrained_views", ["page_id"], name: "index_page_constrained_views_on_page_id"

  create_table "pages", force: :cascade do |t|
    t.string   "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end
