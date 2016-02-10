class CreatJoinTables < ActiveRecord::Migration
  def change
       
    create_join_table :organisations, :organisations, table_name: :organisations_organisations do |t|
      t.integer  :organisation_id_1      , null: false
      t.integer  :organisation_id_2      , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :organisation_1_role_id , null: false, default: 0
      t.integer  :organisation_2_role_id , null: false, default: 0
      t.text     :note                   , limit: 4000
      t.string   :created_by             , limit: 100, null: false
      t.string   :updated_by             , limit: 100, null: false
      t.string   :session_id             , limit: 100, null: false
      t.boolean  :main_relation          , default: false
      t.integer  :owner_id               , null: false
      
      t.timestamps null: false
    end
    
    add_index "organisations_organisations", ["organisation_id_1",  "organisation_id_2","started_at"], name: "organisations_organistations_idx", using: :btree
    
    
    create_join_table :organisations, :projects, table_name: :projects_organisations do |t|
      t.integer  :project_id              , null: false
      t.integer  :organisation_id        , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :organisation_role_id   , null: false, default: 0
      t.integer  :project_role_id         , null: false, default: 0
      t.text     :note                   , limit: 4000
      t.string   :created_by             , limit: 100, null: false
      t.string   :updated_by             , limit: 100, null: false
      t.string   :session_id             , limit: 100, null: false
      t.boolean  :main_relation          , default: false
      t.integer  :owner_id               , null: false
      
      t.timestamps null: false
    end

    add_index "projects_organisations", ["project_id", "organisation_id", "started_at"], name: "projects_organistations_idx", using: :btree
    add_index "projects_organisations", ["organisation_id", "project_id", "started_at"], name: "organistations_projects_idx", using: :btree
    
    
    create_join_table :projects, :members, table_name: :projects_members do |t|
      t.integer  :project_id             , null: false
      t.integer  :member_id              , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :project_role_id        , null: false, default: 0
      t.integer  :member_role_id         , null: false, default: 0
      t.text     :note                   , limit: 4000
      t.string   :created_by             , limit: 100, null: false
      t.string   :updated_by             , limit: 100, null: false
      t.string   :session_id             , limit: 100, null: false
      t.boolean  :main_relation          , default: false
      t.integer  :owner_id               , null: false

      t.timestamps null: false
    end
    
    add_index "projects_members", ["project_id", "member_id", "started_at"], name: "projects_members_idx", using: :btree
    add_index "projects_members", ["member_id", "project_id", "started_at"], name: "members_projects_idx", using: :btree
    
    
    create_join_table :projects, :actions, table_name: :projects_actions do |t|
      t.integer  :project_id             , null: false
      t.integer  :action_id              , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :project_role_id        , null: false, default: 0
      t.integer  :action_role_id         , null: false, default: 0
      t.text     :note                   , limit: 4000
      t.string   :created_by             , limit: 100, null: false
      t.string   :updated_by             , limit: 100, null: false
      t.string   :session_id             , limit: 100, null: false
      t.boolean  :main_relation          , default: false
      t.integer  :owner_id               , null: false

      t.timestamps null: false
    end
    
    add_index "projects_actions", ["project_id", "action_id", "started_at"], name: "projects_actions_idx", using: :btree
    add_index "projects_actions", ["action_id", "project_id", "started_at"], name: "actions_projects_idx", using: :btree
       
    
    create_join_table :documents, :actions, table_name: :documents_actions do |t|
      t.integer  :document_id            , null: false
      t.integer  :action_id              , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :document_role_id       , null: false, default: 0
      t.integer  :action_role_id         , null: false, default: 0
      t.text     :note                   , limit: 4000
      t.string   :created_by             , limit: 100, null: false
      t.string   :updated_by             , limit: 100, null: false
      t.string   :session_id             , limit: 100, null: false
      t.boolean  :main_relation          , default: false
      t.integer  :owner_id               , null: false

      t.timestamps null: false
    end
    
    add_index "documents_actions", ["document_id", "action_id", "started_at"], name: "documents_actions_idx", using: :btree
    add_index "documents_actions", ["action_id", "document_id", "started_at"], name: "actions_documents_idx", using: :btree
       
    
    create_join_table :items, :documents, table_name: :items_documents do |t|
      t.integer  :item_id                , null: false
      t.integer  :document_id            , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :item_role_id           , null: false, default: 0
      t.integer  :document_role_id       , null: false, default: 0
      t.text     :note                   , limit: 4000
      t.string   :created_by             , limit: 100, null: false
      t.string   :updated_by             , limit: 100, null: false
      t.string   :session_id             , limit: 100, null: false
      t.boolean  :main_relation          , default: false
      t.integer  :owner_id               , null: false

      t.timestamps null: false
    end
    
    add_index "items_documents", ["item_id", "document_id", "started_at"], name: "items_documents_idx", using: :btree
    add_index "items_documents", ["document_id", "item_id", "started_at"], name: "documents_items_idx", using: :btree
       
       
    
    create_join_table :projects, :projects, table_name: :projects_projects do |t|
      t.integer  :project_id_1           , null: false
      t.integer  :project_id_2           , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :project_1_role_id      , null: false, default: 0
      t.integer  :project_2_role_id      , null: false, default: 0
      t.text     :note                   , limit: 4000
      t.string   :created_by             , limit: 100, null: false
      t.string   :updated_by             , limit: 100, null: false
      t.string   :session_id             , limit: 100, null: false
      t.boolean  :main_relation          , default: false
      t.integer  :owner_id               , null: false

      t.timestamps null: false
    end
    
    add_index "projects_projects", ["project_id_1", "project_2_id", "started_at"], name: "projects_projects_idx", using: :btree
    
  
  end
end
