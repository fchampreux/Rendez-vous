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

ActiveRecord::Schema.define(version: 20151204000907) do

  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "actions", force: :cascade do |t|
    t.string   "name",        limit: 100,                                          null: false
    t.text     "description"
    t.datetime "planned_at"
    t.datetime "closing_at"
    t.datetime "started_at"
    t.datetime "ended_at"
    t.datetime "due_at"
    t.decimal  "duration",                precision: 12, scale: 2
    t.integer  "priority_id",                                      default: 0
    t.integer  "mode_id",                                          default: 0,     null: false
    t.integer  "status_id",                                        default: 0,     null: false
    t.integer  "owner_id",                                                         null: false
    t.datetime "created_at",                                                       null: false
    t.datetime "updated_at",                                                       null: false
    t.boolean  "is_planned",                                       default: false
    t.string   "created_by",  limit: 100,                                          null: false
    t.string   "updated_by",  limit: 100,                                          null: false
    t.string   "session_id",  limit: 100,                                          null: false
  end

  add_index "actions", ["mode_id"], name: "actions_idx_mode", using: :btree
  add_index "actions", ["name"], name: "actions_idx_name", using: :btree
  add_index "actions", ["priority_id"], name: "actions_idx_priority", using: :btree
  add_index "actions", ["status_id"], name: "actions_idx_status", using: :btree

  create_table "actions_documents", id: false, force: :cascade do |t|
    t.integer  "action_id",                                    null: false
    t.integer  "document_id",                                  null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "action_role_id",                               null: false
    t.integer  "document_role_id",             default: 0,     null: false
    t.text     "note"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.boolean  "main_relation",                default: false
  end

  add_index "actions_documents", ["action_id", "started_at"], name: "actions_documents_idx", using: :btree
  add_index "actions_documents", ["document_id", "started_at"], name: "documents_actions_idx", using: :btree

  create_table "actions_members", id: false, force: :cascade do |t|
    t.integer  "member_id",                                  null: false
    t.integer  "action_id",                                  null: false
    t.datetime "started_at",                                 null: false
    t.datetime "ended_at"
    t.integer  "status_id",                  default: 0,     null: false
    t.integer  "member_role_id",                             null: false
    t.integer  "action_role_id",             default: 0,     null: false
    t.text     "note"
    t.datetime "created_at",                                 null: false
    t.datetime "updated_at",                                 null: false
    t.string   "created_by",     limit: 100,                 null: false
    t.string   "updated_by",     limit: 100,                 null: false
    t.string   "session_id",     limit: 100,                 null: false
    t.boolean  "main_relation",              default: false
  end

  add_index "actions_members", ["action_id", "started_at"], name: "actions_members_idx", using: :btree
  add_index "actions_members", ["member_id", "started_at"], name: "members_actions_idx", using: :btree

  create_table "actions_organisations", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                                  null: false
    t.integer  "action_id",                                        null: false
    t.datetime "started_at",                                       null: false
    t.datetime "ended_at"
    t.integer  "status_id",                        default: 0,     null: false
    t.integer  "organisation_role_id",                             null: false
    t.integer  "action_role_id",                   default: 0,     null: false
    t.text     "note"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "created_by",           limit: 100,                 null: false
    t.string   "updated_by",           limit: 100,                 null: false
    t.string   "session_id",           limit: 100,                 null: false
    t.boolean  "main_relation",                    default: false
  end

  add_index "actions_organisations", ["action_id", "started_at"], name: "actions_organisations_idx", using: :btree
  add_index "actions_organisations", ["organisation_id", "started_at"], name: "organisations_actions_idx", using: :btree

  create_table "actions_projects", id: false, force: :cascade do |t|
    t.integer  "project_id",                                  null: false
    t.integer  "action_id",                                   null: false
    t.datetime "started_at",                                  null: false
    t.datetime "ended_at"
    t.integer  "status_id",                   default: 0,     null: false
    t.integer  "project_role_id",                             null: false
    t.integer  "action_role_id",              default: 0,     null: false
    t.text     "note"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "created_by",      limit: 100,                 null: false
    t.string   "updated_by",      limit: 100,                 null: false
    t.string   "session_id",      limit: 100,                 null: false
    t.boolean  "main_relation",               default: false
  end

  add_index "actions_projects", ["action_id", "started_at"], name: "actions_projects_idx", using: :btree
  add_index "actions_projects", ["project_id", "started_at"], name: "projects_actions_idx", using: :btree

  create_table "documents", force: :cascade do |t|
    t.string   "name",        limit: 100,             null: false
    t.text     "description"
    t.text     "resource"
    t.integer  "media_id",                default: 0, null: false
    t.integer  "status_id",               default: 0, null: false
    t.integer  "owner_id",                            null: false
    t.datetime "created_at",                          null: false
    t.datetime "updated_at",                          null: false
    t.string   "created_by",  limit: 100,             null: false
    t.string   "updated_by",  limit: 100,             null: false
    t.string   "session_id",  limit: 100,             null: false
    t.string   "code",        limit: 100
    t.string   "chrono",      limit: 100
  end

  add_index "documents", ["chrono"], name: "documents_idx_chrono", using: :btree
  add_index "documents", ["code"], name: "documents_idx_code", using: :btree
  add_index "documents", ["name"], name: "documents_idx_name", using: :btree

  create_table "documents_items", id: false, force: :cascade do |t|
    t.integer  "document_id",                                  null: false
    t.integer  "item_id",                                      null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "document_role_id",                             null: false
    t.integer  "item_role_id",                 default: 0,     null: false
    t.text     "note"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.boolean  "main_relation",                default: false
  end

  add_index "documents_items", ["document_id", "started_at"], name: "documents_items_idx", using: :btree
  add_index "documents_items", ["item_id", "started_at"], name: "items_documents_idx", using: :btree

  create_table "documents_members", id: false, force: :cascade do |t|
    t.integer  "member_id",                                    null: false
    t.integer  "document_id",                                  null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "member_role_id",                               null: false
    t.integer  "document_role_id",             default: 0,     null: false
    t.text     "note"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.boolean  "main_relation",                default: false
  end

  add_index "documents_members", ["document_id", "started_at"], name: "documents_members_idx", using: :btree
  add_index "documents_members", ["member_id", "started_at"], name: "members_documents_idx", using: :btree

  create_table "documents_organisations", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                                  null: false
    t.integer  "document_id",                                      null: false
    t.datetime "started_at",                                       null: false
    t.datetime "ended_at"
    t.integer  "status_id",                        default: 0,     null: false
    t.integer  "organisation_role_id",                             null: false
    t.integer  "document_role_id",                 default: 0,     null: false
    t.text     "note"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "created_by",           limit: 100,                 null: false
    t.string   "updated_by",           limit: 100,                 null: false
    t.string   "session_id",           limit: 100,                 null: false
    t.boolean  "main_relation",                    default: false
  end

  add_index "documents_organisations", ["document_id", "started_at"], name: "documents_organisations_idx", using: :btree
  add_index "documents_organisations", ["organisation_id", "started_at"], name: "organisations_documents_idx", using: :btree

  create_table "documents_projects", id: false, force: :cascade do |t|
    t.integer  "project_id",                                   null: false
    t.integer  "document_id",                                  null: false
    t.datetime "started_at",                                   null: false
    t.datetime "ended_at"
    t.integer  "status_id",                    default: 0,     null: false
    t.integer  "project_role_id",                              null: false
    t.integer  "document_role_id",             default: 0,     null: false
    t.text     "note"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.string   "created_by",       limit: 100,                 null: false
    t.string   "updated_by",       limit: 100,                 null: false
    t.string   "session_id",       limit: 100,                 null: false
    t.boolean  "main_relation",                default: false
  end

  add_index "documents_projects", ["document_id", "started_at"], name: "documents_projects_idx", using: :btree
  add_index "documents_projects", ["project_id", "started_at"], name: "projects_documents_idx", using: :btree

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
    t.string   "created_by",  limit: 100,             null: false
    t.string   "updated_by",  limit: 100,             null: false
    t.string   "session_id",  limit: 100,             null: false
  end

  add_index "items", ["code"], name: "items_idx_code", using: :btree
  add_index "items", ["name"], name: "items_idx_name", using: :btree

  create_table "items_projects", id: false, force: :cascade do |t|
    t.integer  "project_id",                                  null: false
    t.integer  "item_id",                                     null: false
    t.datetime "started_at",                                  null: false
    t.datetime "ended_at"
    t.integer  "status_id",                   default: 0,     null: false
    t.integer  "project_role_id",                             null: false
    t.integer  "item_role_id",                default: 0,     null: false
    t.text     "note"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "created_by",      limit: 100,                 null: false
    t.string   "updated_by",      limit: 100,                 null: false
    t.string   "session_id",      limit: 100,                 null: false
    t.boolean  "main_relation",               default: false
  end

  add_index "items_projects", ["item_id", "started_at"], name: "items_projects_idx", using: :btree
  add_index "items_projects", ["project_id", "started_at"], name: "projects_items_idx", using: :btree

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
    t.string   "created_by",  limit: 100,             null: false
    t.string   "updated_by",  limit: 100,             null: false
    t.string   "session_id",  limit: 100,             null: false
  end

  add_index "members", ["first_name"], name: "members_idx_first_name", using: :btree
  add_index "members", ["last_name"], name: "members_idx_last_name", using: :btree

  create_table "members_organisations", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                                  null: false
    t.integer  "member_id",                                        null: false
    t.datetime "started_at",                                       null: false
    t.datetime "ended_at"
    t.integer  "status_id",                        default: 0,     null: false
    t.integer  "organisation_role_id",                             null: false
    t.integer  "member_role_id",                                   null: false
    t.text     "note"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "created_by",           limit: 100,                 null: false
    t.string   "updated_by",           limit: 100,                 null: false
    t.string   "session_id",           limit: 100,                 null: false
    t.boolean  "main_relation",                    default: false
  end

  add_index "members_organisations", ["member_id", "started_at"], name: "members_organisations_idx", using: :btree
  add_index "members_organisations", ["organisation_id", "started_at"], name: "organisations_members_idx", using: :btree

  create_table "members_projects", id: false, force: :cascade do |t|
    t.integer  "member_id",                                   null: false
    t.integer  "project_id",                                  null: false
    t.datetime "started_at",                                  null: false
    t.datetime "ended_at"
    t.integer  "status_id",                   default: 0,     null: false
    t.integer  "member_role_id",                              null: false
    t.integer  "project_role_id",             default: 0,     null: false
    t.text     "note"
    t.datetime "created_at",                                  null: false
    t.datetime "updated_at",                                  null: false
    t.string   "created_by",      limit: 100,                 null: false
    t.string   "updated_by",      limit: 100,                 null: false
    t.string   "session_id",      limit: 100,                 null: false
    t.boolean  "main_relation",               default: false
  end

  add_index "members_projects", ["member_id", "started_at"], name: "members_projects_idx", using: :btree
  add_index "members_projects", ["project_id", "started_at"], name: "projects_members_idx", using: :btree

  create_table "opportunities", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                                  null: false
    t.integer  "item_id",                                          null: false
    t.integer  "member_id"
    t.datetime "started_at",                                       null: false
    t.datetime "ended_at"
    t.integer  "status_id",                        default: 0,     null: false
    t.integer  "organisation_role_id",                             null: false
    t.integer  "item_role_id",                     default: 0,     null: false
    t.decimal  "quantity",                         default: 0.0
    t.text     "note"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "created_by",           limit: 100,                 null: false
    t.string   "updated_by",           limit: 100,                 null: false
    t.string   "session_id",           limit: 100,                 null: false
    t.boolean  "main_relation",                    default: false
  end

  add_index "opportunities", ["item_id", "started_at"], name: "opportunities_items_idx", using: :btree
  add_index "opportunities", ["member_id", "started_at"], name: "members_opportunities_idx", using: :btree

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
    t.string   "created_by",  limit: 100,             null: false
    t.string   "updated_by",  limit: 100,             null: false
    t.string   "session_id",  limit: 100,             null: false
    t.string   "code",        limit: 100
  end

  add_index "organisations", ["code"], name: "organisations_idx_code", using: :btree
  add_index "organisations", ["name"], name: "organisations_idx_name", using: :btree

  create_table "organisations_projects", id: false, force: :cascade do |t|
    t.integer  "organisation_id",                                  null: false
    t.integer  "project_id",                                       null: false
    t.datetime "started_at",                                       null: false
    t.datetime "ended_at"
    t.integer  "status_id",                        default: 0,     null: false
    t.integer  "organisation_role_id",                             null: false
    t.integer  "project_role_id",                  default: 0,     null: false
    t.text     "note"
    t.datetime "created_at",                                       null: false
    t.datetime "updated_at",                                       null: false
    t.string   "created_by",           limit: 100,                 null: false
    t.string   "updated_by",           limit: 100,                 null: false
    t.string   "session_id",           limit: 100,                 null: false
    t.boolean  "main_relation",                    default: false
  end

  add_index "organisations_projects", ["organisation_id", "started_at"], name: "organisations_projects_idx", using: :btree
  add_index "organisations_projects", ["project_id", "started_at"], name: "projects_organisations_idx", using: :btree

  create_table "parameters", force: :cascade do |t|
    t.integer  "parameters_list_id"
    t.string   "name"
    t.text     "description"
    t.datetime "active_from"
    t.datetime "active_to"
    t.string   "parent_list"
    t.string   "value"
    t.string   "code"
    t.integer  "owner_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                                   null: false
    t.datetime "updated_at",                                   null: false
    t.integer  "user_id",                       default: 0,    null: false
    t.string   "language",           limit: 10, default: "en", null: false
  end

  add_index "parameters", ["code", "user_id", "language"], name: "parameters_idx", unique: true, using: :btree

  create_table "parameters_lists", force: :cascade do |t|
    t.string   "code"
    t.string   "name"
    t.text     "description"
    t.integer  "owner_id"
    t.string   "created_by"
    t.string   "updated_by"
    t.datetime "created_at",                            null: false
    t.datetime "updated_at",                            null: false
    t.integer  "user_id",                default: 0,    null: false
    t.string   "language",    limit: 10, default: "en", null: false
  end

  add_index "parameters_lists", ["code", "user_id", "language"], name: "parameters_lists_idx", unique: true, using: :btree

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
    t.string   "created_by",  limit: 100,             null: false
    t.string   "updated_by",  limit: 100,             null: false
    t.string   "session_id",  limit: 100,             null: false
    t.string   "code",        limit: 100
  end

  add_index "projects", ["code"], name: "projects_idx_code", using: :btree
  add_index "projects", ["name"], name: "projects_idx_name", using: :btree

end
