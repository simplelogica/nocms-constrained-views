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

ActiveRecord::Schema.define(version: 2015_09_21_104516) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "acts_as_constrained_date_constraints", id: :serial, force: :cascade do |t|
    t.date "starts_at"
    t.date "ends_at"
    t.string "constrained_type"
    t.bigint "constrained_id"
    t.index ["constrained_type", "constrained_id"], name: "index_date_constraints_on_constrained"
  end

  create_table "acts_as_constrained_model_constraints", id: :serial, force: :cascade do |t|
    t.string "constraining_type"
    t.bigint "constraining_id"
    t.string "constrained_type"
    t.bigint "constrained_id"
    t.index ["constrained_type", "constrained_id"], name: "index_model_constraints_on_constrained"
    t.index ["constraining_type", "constraining_id"], name: "index_model_constraints_on_constraining"
  end

  create_table "no_cms_blocks_block_slots", id: :serial, force: :cascade do |t|
    t.string "container_type"
    t.bigint "container_id"
    t.bigint "block_id"
    t.integer "position", default: 0
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.bigint "parent_id"
    t.integer "lft"
    t.integer "rgt"
    t.integer "depth"
    t.string "template_zone"
    t.index ["block_id"], name: "index_no_cms_blocks_block_slots_on_block_id"
    t.index ["container_type", "container_id"], name: "index_no_cms_blocks_block_slots_on_container_type_and_id"
    t.index ["parent_id"], name: "index_no_cms_blocks_block_slots_on_parent_id"
  end

  create_table "no_cms_blocks_block_translations", id: :serial, force: :cascade do |t|
    t.bigint "no_cms_blocks_block_id"
    t.string "locale"
    t.text "fields_info"
    t.boolean "draft"
    t.index ["no_cms_blocks_block_id"], name: "no_cms_blocks_block_id"
  end

  create_table "no_cms_blocks_blocks", id: :serial, force: :cascade do |t|
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.integer "parent_id"
    t.integer "lft"
    t.integer "rgt"
    t.integer "depth"
    t.integer "position"
    t.text "fields_info"
    t.string "layout"
    t.string "template_zone"
  end

  create_table "page_constrained_views", id: :serial, force: :cascade do |t|
    t.bigint "page_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.date "single_date_constraint_starts_at"
    t.date "single_date_constraint_ends_at"
    t.string "template"
    t.index ["page_id"], name: "index_page_constrained_views_on_page_id"
  end

  create_table "pages", id: :serial, force: :cascade do |t|
    t.string "name"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_foreign_key "no_cms_blocks_block_slots", "no_cms_blocks_block_slots", column: "parent_id"
  add_foreign_key "no_cms_blocks_blocks", "no_cms_blocks_blocks", column: "parent_id"
  add_foreign_key "page_constrained_views", "pages"
end
