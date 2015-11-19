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

ActiveRecord::Schema.define(version: 20151119224401) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string   "name",        limit: 100,                                      null: false
    t.text     "description"
    t.datetime "planned_at"
    t.datetime "closing_at"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "due_at"
    t.decimal  "duration",                precision: 12, scale: 2
    t.integer  "priority_id",                                      default: 0
    t.integer  "mode_id",                                          default: 0, null: false
    t.integer  "status_id",                                        default: 0, null: false
    t.integer  "owner_id",                                                     null: false
    t.datetime "created_at",                                                   null: false
    t.datetime "updated_at",                                                   null: false
  end

  add_index "actions", ["name"], name: "index_actions_on_name", using: :btree

  create_table "actions_documents", id: false, force: :cascade do |t|
    t.integer  "action_id",                    null: false
    t.integer  "document_id",                  null: false
    t.datetime "started_at",                   null: false
    t.datetime "ended_at"
    t.binary   "main_relation",                null: false
    t.integer  "status_id",        default: 0, null: false
    t.integer  "action_role_id",               null: false
    t.integer  "document_role_id", default: 0, null: false
    t.text     "note"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "actions_members", id: false, force: :cascade do |t|
    t.integer  "member_id",                  null: false
    t.integer  "action_id",                  null: false
    t.datetime "started_at",                 null: false
    t.datetime "ended_at"
    t.binary   "main_relation",              null: false
    t.integer  "status_id",      default: 0, null: false
    t.integer  "member_role_id",             null: false
    t.integer  "action_role_id", default: 0, null: false
    t.text     "note"
    t.datetime "created_at",                 null: false
    t.datetime "updated_at",                 null: false
  end

  create_table "actions_organisations", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                  null: false
    t.integer  "action_id",                        null: false
    t.datetime "started_at",                       null: false
    t.datetime "ended_at"
    t.binary   "main_relation",                    null: false
    t.integer  "status_id",            default: 0, null: false
    t.integer  "organisation_role_id",             null: false
    t.integer  "action_role_id",       default: 0, null: false
    t.text     "note"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "actions_projects", id: false, force: :cascade do |t|
    t.integer  "project_id",                  null: false
    t.integer  "action_id",                   null: false
    t.datetime "started_at",                  null: false
    t.datetime "ended_at"
    t.binary   "main_relation",               null: false
    t.integer  "status_id",       default: 0, null: false
    t.integer  "project_role_id",             null: false
    t.integer  "action_role_id",  default: 0, null: false
    t.text     "note"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "name",        limit: 100,             null: false
    t.text     "description"
    t.text     "resource"
    t.integer  "media_id",                default: 0, null: false
    t.integer  "status_id",               default: 0, null: false
    t.integer  "owner_id",                            null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "documents", ["name"], name: "index_documents_on_name", using: :btree

  create_table "documents_items", id: false, force: :cascade do |t|
    t.integer  "document_id",                  null: false
    t.integer  "item_id",                      null: false
    t.datetime "started_at",                   null: false
    t.datetime "ended_at"
    t.binary   "main_relation",                null: false
    t.integer  "status_id",        default: 0, null: false
    t.integer  "document_role_id",             null: false
    t.integer  "item_role_id",     default: 0, null: false
    t.text     "note"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "documents_members", id: false, force: :cascade do |t|
    t.integer  "member_id",                    null: false
    t.integer  "document_id",                  null: false
    t.datetime "started_at",                   null: false
    t.datetime "ended_at"
    t.binary   "main_relation",                null: false
    t.integer  "status_id",        default: 0, null: false
    t.integer  "member_role_id",               null: false
    t.integer  "document_role_id", default: 0, null: false
    t.text     "note"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "documents_organisations", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                  null: false
    t.integer  "document_id",                      null: false
    t.datetime "started_at",                       null: false
    t.datetime "ended_at"
    t.binary   "main_relation",                    null: false
    t.integer  "status_id",            default: 0, null: false
    t.integer  "organisation_role_id",             null: false
    t.integer  "document_role_id",     default: 0, null: false
    t.text     "note"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "documents_projects", id: false, force: :cascade do |t|
    t.integer  "project_id",                   null: false
    t.integer  "document_id",                  null: false
    t.datetime "started_at",                   null: false
    t.datetime "ended_at"
    t.binary   "main_relation",                null: false
    t.integer  "status_id",        default: 0, null: false
    t.integer  "project_role_id",              null: false
    t.integer  "document_role_id", default: 0, null: false
    t.text     "note"
    t.datetime "created_at",                   null: false
    t.datetime "updated_at",                   null: false
  end

  create_table "items", force: :cascade do |t|
    t.string   "code",        limit: 100,             null: false
    t.string   "name",        limit: 100,             null: false
    t.text     "description"
    t.text     "resource"
    t.integer  "media_id",                default: 0, null: false
    t.integer  "status_id",               default: 0, null: false
    t.integer  "owner_id",                            null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "items", ["code"], name: "index_items_on_code", using: :btree
  add_index "items", ["name"], name: "index_items_on_name", using: :btree

  create_table "items_projects", id: false, force: :cascade do |t|
    t.integer  "project_id",                  null: false
    t.integer  "item_id",                     null: false
    t.datetime "started_at",                  null: false
    t.datetime "ended_at"
    t.binary   "main_relation",               null: false
    t.integer  "status_id",       default: 0, null: false
    t.integer  "project_role_id",             null: false
    t.integer  "item_role_id",    default: 0, null: false
    t.text     "note"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "leads_imports", force: :cascade do |t|
    t.string   "title",        limit: 100
    t.string   "first_name",   limit: 100
    t.string   "mid_name",     limit: 100
    t.string   "last_name",    limit: 100
    t.text     "description"
    t.text     "address"
    t.string   "zip",          limit: 20
    t.string   "city",         limit: 100
    t.string   "website",      limit: 100
    t.string   "email",        limit: 100
    t.string   "phone",        limit: 100
    t.string   "language",     limit: 100
    t.string   "location",     limit: 100
    t.string   "source_url",   limit: 100
    t.string   "image_url",    limit: 100
    t.string   "company",      limit: 100
    t.text     "cy_desc"
    t.text     "cy_address"
    t.string   "cy_zip",       limit: 20
    t.string   "cy_city",      limit: 100
    t.string   "cy_state",     limit: 100
    t.string   "cy_country",   limit: 100
    t.string   "cy_website",   limit: 100
    t.string   "cy_email",     limit: 100
    t.string   "cy_phone",     limit: 100
    t.string   "cy_type",      limit: 100
    t.string   "cy_legal",     limit: 100
    t.string   "role",         limit: 100
    t.string   "from_date",    limit: 20
    t.string   "job_location", limit: 100
    t.text     "job_desc"
    t.string   "action",       limit: 100
    t.string   "action_type",  limit: 20
    t.string   "started_at",   limit: 20
    t.string   "ended_at",     limit: 20
    t.text     "note"
    t.datetime "created_at",               null: false
    t.datetime "updated_at",               null: false
  end

  create_table "members", force: :cascade do |t|
    t.integer  "title_id"
    t.string   "first_name",  limit: 100
    t.string   "mid_name",    limit: 100
    t.string   "last_name",   limit: 100,             null: false
    t.text     "description"
    t.text     "address"
    t.string   "zip",         limit: 20
    t.string   "city",        limit: 100
    t.string   "state",       limit: 100
    t.integer  "country_id"
    t.string   "website",     limit: 100
    t.string   "email",       limit: 100
    t.string   "phone",       limit: 100
    t.string   "mobile",      limit: 100
    t.text     "categories"
    t.integer  "status_id",               default: 0, null: false
    t.integer  "owner_id",                            null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "members", ["last_name"], name: "index_members_on_last_name", using: :btree

  create_table "members_organisations", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                  null: false
    t.integer  "member_id",                        null: false
    t.datetime "started_at",                       null: false
    t.datetime "ended_at"
    t.binary   "main_relation",                    null: false
    t.integer  "status_id",            default: 0, null: false
    t.integer  "organisation_role_id",             null: false
    t.integer  "member_role_id",                   null: false
    t.text     "note"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "members_projects", id: false, force: :cascade do |t|
    t.integer  "member_id",                   null: false
    t.integer  "project_id",                  null: false
    t.datetime "started_at",                  null: false
    t.datetime "ended_at"
    t.binary   "main_relation",               null: false
    t.integer  "status_id",       default: 0, null: false
    t.integer  "member_role_id",              null: false
    t.integer  "project_role_id", default: 0, null: false
    t.text     "note"
    t.datetime "created_at",                  null: false
    t.datetime "updated_at",                  null: false
  end

  create_table "opportunities", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                    null: false
    t.integer  "item_id",                            null: false
    t.integer  "member_id"
    t.datetime "started_at",                         null: false
    t.datetime "ended_at"
    t.binary   "main_relation",                      null: false
    t.integer  "status_id",            default: 0,   null: false
    t.integer  "organisation_role_id",               null: false
    t.integer  "item_role_id",         default: 0,   null: false
    t.decimal  "quantity",             default: 0.0
    t.text     "note"
    t.datetime "created_at",                         null: false
    t.datetime "updated_at",                         null: false
  end

  create_table "organisations", force: :cascade do |t|
    t.string   "name",        limit: 100,             null: false
    t.text     "description"
    t.text     "address"
    t.string   "zip",         limit: 20
    t.string   "city",        limit: 100
    t.string   "state",       limit: 100
    t.integer  "country_id"
    t.string   "website",     limit: 100
    t.string   "email",       limit: 100
    t.string   "phone",       limit: 100
    t.text     "categories"
    t.integer  "status_id",               default: 0, null: false
    t.integer  "legal_id",                default: 0, null: false
    t.integer  "owner_id",                            null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "organisations", ["name"], name: "index_organisations_on_name", using: :btree

  create_table "organisations_projects", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                  null: false
    t.integer  "project_id",                       null: false
    t.datetime "started_at",                       null: false
    t.datetime "ended_at"
    t.binary   "main_relation",                    null: false
    t.integer  "status_id",            default: 0, null: false
    t.integer  "organisation_role_id",             null: false
    t.integer  "project_role_id",      default: 0, null: false
    t.text     "note"
    t.datetime "created_at",                       null: false
    t.datetime "updated_at",                       null: false
  end

  create_table "parameters", force: :cascade do |t|
    t.integer  "parameters_list_id"
    t.string   "name"
    t.text     "description"
    t.datetime "active_from"
    t.datetime "active_to"
    t.string   "parent_list"
    t.string   "param_value"
    t.string   "param_code"
    t.integer  "owner_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",         null: false
    t.datetime "updated_at",         null: false
  end

  create_table "parameters_lists", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.text     "description"
    t.integer  "owner_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",  null: false
    t.datetime "updated_at",  null: false
  end

  create_table "projects", force: :cascade do |t|
    t.string   "name",        limit: 100,             null: false
    t.text     "description"
    t.text     "address"
    t.string   "zip",         limit: 20
    t.string   "city",        limit: 100
    t.string   "state",       limit: 100
    t.integer  "country_id"
    t.string   "website",     limit: 100
    t.string   "email",       limit: 100
    t.text     "categories"
    t.integer  "status_id",               default: 0, null: false
    t.integer  "owner_id",                            null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
  end

  add_index "projects", ["name"], name: "index_projects_on_name", using: :btree

end
