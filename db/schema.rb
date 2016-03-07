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

ActiveRecord::Schema.define(version: 20160302163438) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string   "name",        limit: 100,                                           null: false
    t.text     "description"
    t.string   "categories",  limit: 1000
    t.string   "tags",        limit: 1000
    t.datetime "planned_at"
    t.datetime "closing_at"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "due_at"
    t.decimal  "duration",                 precision: 12, scale: 2
    t.integer  "priority_id",                                       default: 0
    t.integer  "mode_id",                                           default: 0,     null: false
    t.integer  "status_id",                                         default: 0,     null: false
    t.integer  "owner_id",                                          default: 0,     null: false
    t.datetime "created_at",                                                        null: false
    t.datetime "updated_at",                                                        null: false
    t.boolean  "is_planned",                                        default: false
    t.string   "created_by",  limit: 100,                                           null: false
    t.string   "updated_by",  limit: 100,                                           null: false
    t.string   "session_id",  limit: 100,                                           null: false
  end

  add_index "actions", ["due_at"], name: "actions_idx_due", using: :btree
  add_index "actions", ["is_planned", "planned_at"], name: "actions_idx_planned", using: :btree
  add_index "actions", ["mode_id"], name: "actions_idx_mode", using: :btree
  add_index "actions", ["name"], name: "actions_idx_name", using: :btree
  add_index "actions", ["priority_id"], name: "actions_idx_priority", using: :btree
  add_index "actions", ["status_id"], name: "actions_idx_status", using: :btree

  create_table "actions_actions", id: false, force: :cascade do |t|
    t.integer  "action_1_id",                                  null: false
    t.integer  "action_2_id",                                  null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "action_1_role_id",             default: 0,     null: false
    t.integer  "action_2_role_id",             default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "actions_actions", ["action_1_id", "is_main_relation"], name: "actions_action_1_idx", using: :btree
  add_index "actions_actions", ["action_2_id", "is_main_relation"], name: "actions_action_2_idx", using: :btree

  create_table "actions_members", id: false, force: :cascade do |t|
    t.integer  "member_id",                                    null: false
    t.integer  "action_id",                                    null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "member_role_id",               default: 0,     null: false
    t.integer  "action_role_id",               default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "actions_members", ["action_id", "is_main_relation"], name: "actions_members_idx", using: :btree
  add_index "actions_members", ["member_id", "is_main_relation"], name: "members_actions_idx", using: :btree

  create_table "actions_organisations", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                                  null: false
    t.integer  "action_id",                                        null: false
    t.datetime "started_at",                                       null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",                 default: false
    t.integer  "status_id",                        default: 0,     null: false
    t.integer  "organisation_role_id",             default: 0,     null: false
    t.integer  "action_role_id",                   default: 0,     null: false
    t.text     "note"
    t.string   "created_by",           limit: 100,                 null: false
    t.string   "updated_by",           limit: 100,                 null: false
    t.string   "session_id",           limit: 100,                 null: false
    t.integer  "owner_id",                         default: 0,     null: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "actions_organisations", ["action_id", "is_main_relation"], name: "actions_organisations_idx", using: :btree
  add_index "actions_organisations", ["organisation_id", "is_main_relation"], name: "organisations_actions_idx", using: :btree

  create_table "addresses", force: :cascade do |t|
    t.integer  "address_type_id",                         null: false
    t.string   "address_name",    limit: 100
    t.text     "address"
    t.string   "zip",             limit: 20
    t.string   "city",            limit: 50
    t.string   "state",           limit: 50
    t.integer  "country_id",                  default: 0, null: false
    t.integer  "status_id",                   default: 0
    t.datetime "active_from",                             null: false
    t.datetime "active_to"
    t.string   "entity_type",                             null: false
    t.integer  "entity_id",                   default: 0, null: false
    t.string   "created_by",      limit: 100,             null: false
    t.string   "updated_by",      limit: 100,             null: false
    t.string   "session_id",      limit: 100,             null: false
    t.integer  "owner_id",                    default: 0, null: false
    t.datetime "created_at",                              null: false
    t.datetime "updated_at",                              null: false
  end

  add_index "addresses", ["entity_type", "entity_id"], name: "addresses_idx", using: :btree

  create_table "chronos", force: :cascade do |t|
    t.string   "name",       limit: 100,                            null: false
    t.string   "code",       limit: 100,                            null: false
    t.integer  "counter",                default: 0,                null: false
    t.integer  "nb_digits",              default: 6,                null: false
    t.string   "template",   limit: 50,  default: "code;-;counter", null: false
    t.integer  "status_id",              default: 0,                null: false
    t.integer  "owner_id",               default: 0,                null: false
    t.datetime "created_at",                                        null: false
    t.datetime "updated_at",                                        null: false
    t.string   "created_by", limit: 100,                            null: false
    t.string   "updated_by", limit: 100,                            null: false
    t.string   "session_id", limit: 100,                            null: false
  end

  create_table "documents", force: :cascade do |t|
    t.string   "name",          limit: 100,                  null: false
    t.string   "code",          limit: 100
    t.string   "chrono",        limit: 100
    t.text     "description"
    t.string   "categories",    limit: 1000
    t.string   "tags",          limit: 1000
    t.string   "resource",      limit: 1000
    t.integer  "media_type_id",              default: 0,     null: false
    t.integer  "chrono_id",                  default: 0
    t.boolean  "is_template",                default: false
    t.integer  "status_id",                  default: 0,     null: false
    t.integer  "owner_id",                   default: 0,     null: false
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "created_by",    limit: 100,                  null: false
    t.string   "updated_by",    limit: 100,                  null: false
    t.string   "session_id",    limit: 100,                  null: false
  end

  add_index "documents", ["chrono"], name: "documents_idx_chrono", using: :btree
  add_index "documents", ["code"], name: "documents_idx_code", using: :btree
  add_index "documents", ["is_template"], name: "documents_idx_template", using: :btree
  add_index "documents", ["name"], name: "documents_idx_name", using: :btree

  create_table "documents_actions", id: false, force: :cascade do |t|
    t.integer  "document_id",                                  null: false
    t.integer  "action_id",                                    null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "document_role_id",             default: 0,     null: false
    t.integer  "action_role_id",               default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "documents_actions", ["action_id", "is_main_relation"], name: "actions_documents_idx", using: :btree
  add_index "documents_actions", ["document_id", "is_main_relation"], name: "documents_actions_idx", using: :btree

  create_table "documents_documents", id: false, force: :cascade do |t|
    t.integer  "document_1_id",                                  null: false
    t.integer  "document_2_id",                                  null: false
    t.datetime "started_at",                                     null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",               default: false
    t.integer  "status_id",                      default: 0,     null: false
    t.integer  "document_1_role_id",             default: 0,     null: false
    t.integer  "document_2_role_id",             default: 0,     null: false
    t.text     "note"
    t.string   "created_by",         limit: 100,                 null: false
    t.string   "updated_by",         limit: 100,                 null: false
    t.string   "session_id",         limit: 100,                 null: false
    t.integer  "owner_id",                       default: 0,     null: false
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "documents_documents", ["document_1_id", "is_main_relation"], name: "documents_documents_1_idx", using: :btree
  add_index "documents_documents", ["document_2_id", "is_main_relation"], name: "documents_documents_2_idx", using: :btree

  create_table "documents_members", id: false, force: :cascade do |t|
    t.integer  "member_id",                                    null: false
    t.integer  "document_id",                                  null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "member_role_id",               default: 0,     null: false
    t.integer  "document_role_id",             default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "documents_members", ["document_id", "is_main_relation"], name: "documents_members_idx", using: :btree
  add_index "documents_members", ["member_id", "is_main_relation"], name: "members_documents_idx", using: :btree

  create_table "documents_organisations", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                                  null: false
    t.integer  "document_id",                                      null: false
    t.datetime "started_at",                                       null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",                 default: false
    t.integer  "status_id",                        default: 0,     null: false
    t.integer  "organisation_role_id",             default: 0,     null: false
    t.integer  "document_role_id",                 default: 0,     null: false
    t.text     "note"
    t.string   "created_by",           limit: 100,                 null: false
    t.string   "updated_by",           limit: 100,                 null: false
    t.string   "session_id",           limit: 100,                 null: false
    t.integer  "owner_id",                         default: 0,     null: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "documents_organisations", ["document_id", "is_main_relation"], name: "documents_organisations_idx", using: :btree
  add_index "documents_organisations", ["organisation_id", "is_main_relation"], name: "organisations_documents_idx", using: :btree

  create_table "documents_projects", id: false, force: :cascade do |t|
    t.integer  "project_id",                                   null: false
    t.integer  "document_id",                                  null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "project_role_id",              default: 0,     null: false
    t.integer  "document_role_id",             default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "documents_projects", ["document_id", "is_main_relation"], name: "documents_projects_idx", using: :btree
  add_index "documents_projects", ["project_id", "is_main_relation"], name: "projects_documents_idx", using: :btree

  create_table "items", force: :cascade do |t|
    t.string   "code",          limit: 100,              null: false
    t.string   "name",          limit: 100,              null: false
    t.text     "description"
    t.string   "categories",    limit: 1000
    t.string   "tags",          limit: 1000
    t.text     "resource"
    t.integer  "media_type_id",              default: 0, null: false
    t.integer  "status_id",                  default: 0, null: false
    t.integer  "item_type_id",               default: 0, null: false
    t.integer  "owner_id",                   default: 0, null: false
    t.datetime "created_at",                             null: false
    t.datetime "updated_at",                             null: false
    t.string   "created_by",    limit: 100,              null: false
    t.string   "updated_by",    limit: 100,              null: false
    t.string   "session_id",    limit: 100,              null: false
  end

  add_index "items", ["code"], name: "items_idx_code", using: :btree
  add_index "items", ["item_type_id"], name: "items_idx_type", using: :btree
  add_index "items", ["name"], name: "items_idx_name", using: :btree

  create_table "items_documents", id: false, force: :cascade do |t|
    t.integer  "item_id",                                      null: false
    t.integer  "document_id",                                  null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "item_role_id",                 default: 0,     null: false
    t.integer  "document_role_id",             default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "items_documents", ["document_id", "is_main_relation"], name: "documents_items_idx", using: :btree
  add_index "items_documents", ["item_id", "is_main_relation"], name: "items_documents_idx", using: :btree

  create_table "items_items", id: false, force: :cascade do |t|
    t.integer  "item_1_id",                                    null: false
    t.integer  "item_2_id",                                    null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "item_1_role_id",               default: 0,     null: false
    t.integer  "item_2_role_id",               default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "items_items", ["item_1_id", "is_main_relation"], name: "items_items_1_idx", using: :btree
  add_index "items_items", ["item_2_id", "is_main_relation"], name: "items_items_2_idx", using: :btree

  create_table "items_projects", id: false, force: :cascade do |t|
    t.integer  "project_id",                                   null: false
    t.integer  "item_id",                                      null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "project_role_id",              default: 0,     null: false
    t.integer  "item_role_id",                 default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "items_projects", ["item_id", "is_main_relation"], name: "items_projects_idx", using: :btree
  add_index "items_projects", ["project_id", "is_main_relation"], name: "projects_items_idx", using: :btree

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
    t.string   "organisation", limit: 100
    t.text     "org_desc"
    t.text     "org_address"
    t.string   "org_zip",      limit: 20
    t.string   "org_city",     limit: 100
    t.string   "org_state",    limit: 100
    t.string   "org_country",  limit: 100
    t.string   "org_website",  limit: 100
    t.string   "org_email",    limit: 100
    t.string   "org_phone",    limit: 100
    t.string   "org_type",     limit: 100
    t.string   "org_legal",    limit: 100
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
    t.string   "created_by",   limit: 100, null: false
    t.string   "updated_by",   limit: 100, null: false
    t.string   "session_id",   limit: 100, null: false
  end

  add_index "leads_imports", ["action"], name: "leads_imports_idx_action", using: :btree
  add_index "leads_imports", ["created_at"], name: "leads_imports_idx_created_at", using: :btree
  add_index "leads_imports", ["last_name"], name: "leads_imports_idx_last_name", using: :btree
  add_index "leads_imports", ["org_country", "org_state", "org_city"], name: "leads_imports_idx_geo", using: :btree
  add_index "leads_imports", ["organisation"], name: "leads_imports_idx_organisation", using: :btree
  add_index "leads_imports", ["role"], name: "leads_imports_idx_role", using: :btree

  create_table "members", force: :cascade do |t|
    t.integer  "title_id",                 default: 0, null: false
    t.string   "first_name",  limit: 100
    t.string   "mid_name",    limit: 100
    t.string   "last_name",   limit: 100,              null: false
    t.text     "description"
    t.string   "categories",  limit: 1000
    t.string   "tags",        limit: 1000
    t.integer  "status_id",                default: 0, null: false
    t.integer  "owner_id",                 default: 0, null: false
    t.string   "created_by",  limit: 100,              null: false
    t.string   "updated_by",  limit: 100,              null: false
    t.string   "session_id",  limit: 100,              null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "members", ["first_name"], name: "members_idx_first_name", using: :btree
  add_index "members", ["last_name"], name: "members_idx_last_name", using: :btree

  create_table "members_members", id: false, force: :cascade do |t|
    t.integer  "member_1_id",                                  null: false
    t.integer  "member_2_id",                                  null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "member_1_role_id",             default: 0,     null: false
    t.integer  "member_2_role_id",             default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "members_members", ["member_1_id", "is_main_relation"], name: "members_members_1_idx", using: :btree
  add_index "members_members", ["member_2_id", "is_main_relation"], name: "members_members_2_idx", using: :btree

  create_table "members_organisations", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                                  null: false
    t.integer  "member_id",                                        null: false
    t.datetime "started_at",                                       null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",                 default: false
    t.integer  "status_id",                        default: 0,     null: false
    t.integer  "organisation_role_id",             default: 0,     null: false
    t.integer  "member_role_id",                   default: 0,     null: false
    t.text     "note"
    t.string   "created_by",           limit: 100,                 null: false
    t.string   "updated_by",           limit: 100,                 null: false
    t.string   "session_id",           limit: 100,                 null: false
    t.integer  "owner_id",                         default: 0,     null: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "members_organisations", ["member_id", "is_main_relation"], name: "members_organisations_idx", using: :btree
  add_index "members_organisations", ["organisation_id", "is_main_relation"], name: "organisations_members_idx", using: :btree

  create_table "opportunities", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                                  null: false
    t.integer  "item_id",                                          null: false
    t.integer  "member_id"
    t.string   "name",                 limit: 100,                 null: false
    t.string   "code",                 limit: 100
    t.datetime "started_at",                                       null: false
    t.datetime "ended_at"
    t.integer  "status_id",                        default: 0,     null: false
    t.boolean  "is_main_relation",                 default: false
    t.boolean  "is_tariff",                        default: false
    t.integer  "organisation_role_id",             default: 0,     null: false
    t.integer  "item_role_id",                     default: 0,     null: false
    t.decimal  "quantity",                         default: 0.0
    t.decimal  "unit_price",                       default: 0.0
    t.decimal  "discount",                         default: 0.0
    t.text     "note"
    t.string   "created_by",           limit: 100,                 null: false
    t.string   "updated_by",           limit: 100,                 null: false
    t.string   "session_id",           limit: 100,                 null: false
    t.integer  "owner_id",                         default: 0,     null: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "opportunities", ["code"], name: "opportunities_idx_code", using: :btree
  add_index "opportunities", ["item_id", "is_main_relation"], name: "opportunities_idx_items", using: :btree
  add_index "opportunities", ["member_id", "is_main_relation"], name: "opportunities_idx_members", using: :btree
  add_index "opportunities", ["name"], name: "opportunities_idx_name", using: :btree

  create_table "organisations", force: :cascade do |t|
    t.string   "name",        limit: 100,              null: false
    t.string   "code",        limit: 100
    t.text     "description"
    t.string   "categories",  limit: 1000
    t.string   "tags",        limit: 1000
    t.integer  "status_id",                default: 0, null: false
    t.integer  "legal_id",                 default: 0, null: false
    t.integer  "owner_id",                 default: 0, null: false
    t.string   "created_by",  limit: 100,              null: false
    t.string   "updated_by",  limit: 100,              null: false
    t.string   "session_id",  limit: 100,              null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "organisations", ["code"], name: "organisations_idx_code", using: :btree
  add_index "organisations", ["name"], name: "organisations_idx_name", using: :btree

  create_table "organisations_organisations", id: false, force: :cascade do |t|
    t.integer  "organisation_1_id",                                  null: false
    t.integer  "organisation_2_id",                                  null: false
    t.datetime "started_at",                                         null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",                   default: false
    t.integer  "status_id",                          default: 0,     null: false
    t.integer  "organisation_1_role_id",             default: 0,     null: false
    t.integer  "organisation_2_role_id",             default: 0,     null: false
    t.text     "note"
    t.string   "created_by",             limit: 100,                 null: false
    t.string   "updated_by",             limit: 100,                 null: false
    t.string   "session_id",             limit: 100,                 null: false
    t.integer  "owner_id",                           default: 0,     null: false
    t.datetime "created_at",                                         null: false
    t.datetime "updated_at",                                         null: false
  end

  add_index "organisations_organisations", ["organisation_1_id", "is_main_relation"], name: "organisations_organistations_1_idx", using: :btree
  add_index "organisations_organisations", ["organisation_2_id", "is_main_relation"], name: "organisations_organistations_2_idx", using: :btree

  create_table "parameters", force: :cascade do |t|
    t.integer  "parameters_list_id"
    t.string   "name",               limit: 100
    t.text     "description"
    t.datetime "active_from"
    t.datetime "active_to"
    t.string   "parent_list",        limit: 100
    t.string   "value",              limit: 100
    t.string   "code",               limit: 100
    t.integer  "owner_id",                       default: 0,     null: false
    t.string   "created_by",         limit: 100
    t.string   "updated_by",         limit: 100
    t.integer  "user_id",                        default: 0,     null: false
    t.string   "language",           limit: 10,  default: "en",  null: false
    t.boolean  "is_user_specific",               default: false
    t.string   "session_id",         limit: 100
    t.datetime "created_at",                                     null: false
    t.datetime "updated_at",                                     null: false
  end

  add_index "parameters", ["code", "user_id", "language"], name: "parameters_idx", unique: true, using: :btree

  create_table "parameters_lists", force: :cascade do |t|
    t.string   "code",             limit: 100
    t.string   "name",             limit: 100
    t.text     "description"
    t.integer  "owner_id",                     default: 0,     null: false
    t.string   "created_by",       limit: 100
    t.string   "updated_by",       limit: 100
    t.integer  "user_id",                      default: 0,     null: false
    t.string   "language",         limit: 10,  default: "en",  null: false
    t.boolean  "is_user_specific",             default: false
    t.string   "session_id",       limit: 100
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "parameters_lists", ["code", "user_id", "language"], name: "parameters_lists_idx", unique: true, using: :btree

  create_table "phones", force: :cascade do |t|
    t.integer  "phone_type_id",                         null: false
    t.string   "phone_name",    limit: 100
    t.text     "phone"
    t.integer  "country_id",                            null: false
    t.string   "entity_type",                           null: false
    t.integer  "entity_id",                             null: false
    t.string   "created_by",    limit: 100,             null: false
    t.string   "updated_by",    limit: 100,             null: false
    t.string   "session_id",    limit: 100,             null: false
    t.integer  "status_id",                 default: 0
    t.datetime "active_from",                           null: false
    t.datetime "active_to"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
  end

  add_index "phones", ["entity_type", "entity_id"], name: "phones_idx", using: :btree

  create_table "projects", force: :cascade do |t|
    t.string   "name",        limit: 100,              null: false
    t.string   "code",        limit: 100
    t.text     "description"
    t.string   "categories",  limit: 1000
    t.string   "tags",        limit: 1000
    t.integer  "status_id",                default: 0, null: false
    t.integer  "owner_id",                 default: 0, null: false
    t.string   "created_by",  limit: 100,              null: false
    t.string   "updated_by",  limit: 100,              null: false
    t.string   "session_id",  limit: 100,              null: false
    t.datetime "created_at",                           null: false
    t.datetime "updated_at",                           null: false
  end

  add_index "projects", ["code"], name: "projects_idx_code", using: :btree
  add_index "projects", ["name"], name: "projects_idx_name", using: :btree

  create_table "projects_actions", id: false, force: :cascade do |t|
    t.integer  "project_id",                                   null: false
    t.integer  "action_id",                                    null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "project_role_id",              default: 0,     null: false
    t.integer  "action_role_id",               default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "projects_actions", ["action_id", "is_main_relation"], name: "actions_projects_idx", using: :btree
  add_index "projects_actions", ["project_id", "is_main_relation"], name: "projects_actions_idx", using: :btree

  create_table "projects_members", id: false, force: :cascade do |t|
    t.integer  "project_id",                                   null: false
    t.integer  "member_id",                                    null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "project_role_id",              default: 0,     null: false
    t.integer  "member_role_id",               default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "projects_members", ["member_id", "is_main_relation"], name: "members_projects_idx", using: :btree
  add_index "projects_members", ["project_id", "is_main_relation"], name: "projects_members_idx", using: :btree

  create_table "projects_organisations", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                                  null: false
    t.integer  "project_id",                                       null: false
    t.datetime "started_at",                                       null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",                 default: false
    t.integer  "status_id",                        default: 0,     null: false
    t.integer  "organisation_role_id",             default: 0,     null: false
    t.integer  "project_role_id",                  default: 0,     null: false
    t.text     "note"
    t.string   "created_by",           limit: 100,                 null: false
    t.string   "updated_by",           limit: 100,                 null: false
    t.string   "session_id",           limit: 100,                 null: false
    t.integer  "owner_id",                         default: 0,     null: false
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
  end

  add_index "projects_organisations", ["organisation_id", "is_main_relation"], name: "organistations_projects_idx", using: :btree
  add_index "projects_organisations", ["project_id", "is_main_relation"], name: "projects_organistations_idx", using: :btree

  create_table "projects_projects", id: false, force: :cascade do |t|
    t.integer  "project_1_id",                                  null: false
    t.integer  "project_2_id",                                  null: false
    t.datetime "started_at",                                    null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",              default: false
    t.integer  "status_id",                     default: 0,     null: false
    t.integer  "project_1_role_id",             default: 0,     null: false
    t.integer  "project_2_role_id",             default: 0,     null: false
    t.text     "note"
    t.string   "created_by",        limit: 100,                 null: false
    t.string   "updated_by",        limit: 100,                 null: false
    t.string   "session_id",        limit: 100,                 null: false
    t.integer  "owner_id",                      default: 0,     null: false
    t.datetime "created_at",                                    null: false
    t.datetime "updated_at",                                    null: false
  end

  add_index "projects_projects", ["project_1_id", "is_main_relation"], name: "projects_projects_1_idx", using: :btree
  add_index "projects_projects", ["project_2_id", "is_main_relation"], name: "projects_projects_2_idx", using: :btree

  create_table "users", force: :cascade do |t|
    t.integer  "title_id",                            default: 0,  null: false
    t.string   "first_name",             limit: 100,               null: false
    t.string   "last_name",              limit: 100,               null: false
    t.string   "login",                  limit: 100,               null: false
    t.string   "email",                               default: "", null: false
    t.string   "categories",             limit: 1000
    t.string   "tags",                   limit: 1000
    t.string   "encrypted_password",                  default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",                       default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.inet     "current_sign_in_ip"
    t.inet     "last_sign_in_ip"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.integer  "status_id",                                        null: false
    t.integer  "owner_id",                                         null: false
    t.string   "session_id",             limit: 100,               null: false
    t.string   "created_by",             limit: 100,               null: false
    t.string   "updated_by",             limit: 100,               null: false
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true, using: :btree
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true, using: :btree

  create_table "users_actions", id: false, force: :cascade do |t|
    t.integer  "user_id",                                      null: false
    t.integer  "action_id",                                    null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "user_role_id",                 default: 0,     null: false
    t.integer  "action_role_id",               default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "users_actions", ["action_id", "is_main_relation"], name: "actions_users_idx", using: :btree
  add_index "users_actions", ["user_id", "is_main_relation"], name: "users_actions_idx", using: :btree

  create_table "users_documents", id: false, force: :cascade do |t|
    t.integer  "user_id",                                      null: false
    t.integer  "document_id",                                  null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "user_role_id",                 default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "document_role_id",                             null: false
  end

  add_index "users_documents", ["user_id", "is_main_relation"], name: "users_documents_idx", using: :btree

  create_table "users_projects", id: false, force: :cascade do |t|
    t.integer  "user_id",                                      null: false
    t.integer  "project_id",                                   null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "user_role_id",                 default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "project_role_id",                              null: false
  end

  add_index "users_projects", ["user_id", "is_main_relation"], name: "users_projects_idx", using: :btree

  create_table "users_users", id: false, force: :cascade do |t|
    t.integer  "user_1_id",                                    null: false
    t.integer  "user_2_id",                                    null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.boolean  "is_main_relation",             default: false
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "user_1_role_id",               default: 0,     null: false
    t.integer  "user_2_role_id",               default: 0,     null: false
    t.text     "note"
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.integer  "owner_id",                     default: 0,     null: false
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
  end

  add_index "users_users", ["user_1_id", "is_main_relation"], name: "users_users_1_idx", using: :btree
  add_index "users_users", ["user_2_id", "is_main_relation"], name: "users_users_2_idx", using: :btree

end
