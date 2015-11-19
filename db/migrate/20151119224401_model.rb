class Model < ActiveRecord::Migration
  def change

    create_table :organisations do |t|
      t.string   :name          , limit: 100, null: false, index: true
      t.text     :description   , limit: 4000
      t.text     :address       , limit: 1000
      t.string   :zip           , limit: 20
      t.string   :city          , limit: 100
      t.string   :state         , limit: 100
      t.integer  :country_id   
      t.string   :website       , limit: 100
      t.string   :email         , limit: 100
      t.string   :phone         , limit: 100
      t.text     :categories    , limit: 100		
      t.integer  :status_id     , null: false, default: 0
      t.integer  :legal_id      , null: false, default: 0
      t.integer  :owner_id      , null: false
      t.datetime   :created_at,      null: false
      t.datetime   :updated_at,      null: false
      
      t.timestamps null: false
    end
    
    create_table :members do |t|
      t.integer  :title_id
      t.string   :first_name    , limit: 100
      t.string   :mid_name      , limit: 100
      t.string   :last_name     , limit: 100, null: false, index: true
      t.text     :description   , limit: 4000
      t.text     :address       , limit: 1000
      t.string   :zip           , limit: 20
      t.string   :city          , limit: 100
      t.string   :state         , limit: 100
      t.integer  :country_id   
      t.string   :website       , limit: 100
      t.string   :email         , limit: 100
      t.string   :phone         , limit: 100
      t.string   :mobile        , limit: 100
      t.text     :categories    , limit: 100
      t.integer  :status_id     , null: false, default: 0
      t.integer  :owner_id      , null: false
      t.datetime   :created_at,      null: false
      t.datetime   :updated_at,      null: false
      
      t.timestamps null: false
    end

    create_table :projects do |t|
      t.string   :name          , limit: 100, null: false, index: true
      t.text     :description   , limit: 4000
      t.text     :address       , limit: 1000
      t.string   :zip           , limit: 20
      t.string   :city          , limit: 100
      t.string   :state         , limit: 100
      t.integer  :country_id   
      t.string   :website       , limit: 100
      t.string   :email         , limit: 100
      t.text     :categories    , limit: 100
      t.integer  :status_id     , null: false, default: 0
      t.integer  :owner_id      , null: false
      t.datetime   :created_at,      null: false
      t.datetime   :updated_at,      null: false
      
      t.timestamps null: false
    end

    create_table :actions do |t|
      t.string   :name          , limit: 100, null: false, index: true
      t.text     :description   , limit: 4000
      t.datetime :planned_at
      t.datetime :closing_at
      t.datetime :started_at
      t.datetime :ended_at
      t.datetime :due_at
      t.decimal  :duration      , precision: 12, scale: 2
      t.integer  :priority_id   , default: 0
      t.integer  :mode_id       , null: false, default: 0
      t.integer  :status_id     , null: false, default: 0
      t.integer  :owner_id      , null: false
      t.datetime   :created_at,      null: false
      t.datetime   :updated_at,      null: false
      
      t.timestamps null: false
    end

    create_table :documents do |t|
      t.string   :name          , limit: 100, null: false, index: true
      t.text     :description   , limit: 4000
      t.text     :resource      , limit: 1000
      t.integer  :media_id      , null: false, default: 0
      t.integer  :status_id     , null: false, default: 0
      t.integer  :owner_id      , null: false
      t.datetime   :created_at,      null: false
      t.datetime   :updated_at,      null: false
      
      t.timestamps null: false
    end
    
    create_table :items do |t|
      t.string   :code          , limit: 100, null: false, index: true
      t.string   :name          , limit: 100, null: false, index: true
      t.text     :description   , limit: 4000
      t.text     :resource      , limit: 1000
      t.integer  :media_id      , null: false, default: 0
      t.integer  :status_id     , null: false, default: 0
      t.integer  :owner_id      , null: false
      t.datetime   :created_at,      null: false
      t.datetime   :updated_at,      null: false
      
      t.timestamps null: false
    end
    
    create_join_table :organisations, :members do |t|
      t.integer  :organisation_id        , null: false
      t.integer  :member_id              , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :organisation_role_id   , null: false
      t.integer  :member_role_id         , null: false
      t.text     :note                   , limit: 4000
      
      t.timestamps null: false
    end
    
    create_join_table :members, :actions do |t|
      t.integer  :member_id              , null: false
      t.integer  :action_id              , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :member_role_id         , null: false
      t.integer  :action_role_id         , null: false, default: 0
      t.text     :note
      
      t.timestamps null: false
    end

    create_join_table :organisations, :actions do |t|
      t.integer  :organisation_id        , null: false
      t.integer  :action_id              , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :organisation_role_id   , null: false
      t.integer  :action_role_id         , null: false, default: 0
      t.text     :note
      
      t.timestamps null: false
    end
  
    create_join_table :organisations, :projects do |t|
      t.integer  :organisation_id        , null: false
      t.integer  :project_id             , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :organisation_role_id   , null: false
      t.integer  :project_role_id        , null: false, default: 0
      t.text     :note                   , limit: 4000
      
      t.timestamps null: false
    end
    
    create_join_table :members, :projects do |t|
      t.integer  :member_id              , null: false
      t.integer  :project_id             , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :member_role_id         , null: false
      t.integer  :project_role_id        , null: false, default: 0
      t.text     :note                   , limit: 4000
      
      t.timestamps null: false
    end
    
    create_join_table :projects, :actions do |t|
      t.integer  :project_id             , null: false
      t.integer  :action_id              , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :project_role_id        , null: false
      t.integer  :action_role_id         , null: false, default: 0
      t.text     :note                   , limit: 4000
      
      t.timestamps null: false
    end
       
    create_join_table :organisations, :documents do |t|
      t.integer  :organisation_id        , null: false
      t.integer  :document_id            , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :organisation_role_id   , null: false
      t.integer  :document_role_id       , null: false, default: 0
      t.text     :note                   , limit: 4000
      
      t.timestamps null: false
    end
       
    create_join_table :members, :documents do |t|
      t.integer  :member_id              , null: false
      t.integer  :document_id            , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :member_role_id         , null: false
      t.integer  :document_role_id       , null: false, default: 0
      t.text     :note                   , limit: 4000
      
      t.timestamps null: false
    end
               
    create_join_table :projects, :documents do |t|
      t.integer  :project_id             , null: false
      t.integer  :document_id            , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :project_role_id        , null: false
      t.integer  :document_role_id       , null: false, default: 0
      t.text     :note
      
      t.timestamps null: false
    end
       
    create_join_table :actions, :documents do |t|
      t.integer  :action_id              , null: false
      t.integer  :document_id            , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :action_role_id         , null: false
      t.integer  :document_role_id       , null: false, default: 0
      t.text     :note
      
      t.timestamps null: false
    end
       
    create_join_table :organisations, :items, table_name: :opportunities do |t|
      t.integer  :organisation_id        , null: false
      t.integer  :member_id
      t.integer  :item_id                , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :organisation_role_id   , null: false
      t.integer  :item_role_id           , null: false, default: 0
      t.decimal  :quantity               , default: 0
      t.text     :note                   , limit: 4000
      
      t.timestamps null: false
    end
       
    create_join_table :projects, :items do |t|
      t.integer  :project_id             , null: false
      t.integer  :item_id                , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :project_role_id        , null: false
      t.integer  :item_role_id           , null: false, default: 0
      t.text     :note                   , limit: 4000
      
      t.timestamps null: false
    end
       
    create_join_table :documents, :items do |t|
      t.integer  :document_id            , null: false
      t.integer  :item_id                , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :document_role_id       , null: false
      t.integer  :item_role_id           , null: false, default: 0
      t.text     :note                   , limit: 4000
      
      t.timestamps null: false
    end
         
       
    create_table :leads_imports do |t|
      t.string   :title         , limit: 100
      t.string   :first_name    , limit: 100
      t.string   :mid_name      , limit: 100
      t.string   :last_name     , limit: 100
      t.text     :description   , limit: 4000
      t.text     :address       , limit: 1000
      t.string   :zip           , limit: 20
      t.string   :city          , limit: 100
      t.string   :website       , limit: 100
      t.string   :email         , limit: 100
      t.string   :phone         , limit: 100
      t.string   :language      , limit: 100  
      t.string   :location      , limit: 100
      t.string   :email         , limit: 100
      t.string   :phone         , limit: 100
      t.string   :source_url    , limit: 100 
      t.string   :image_url     , limit: 100
      t.string   :company       , limit: 100
      t.text     :cy_desc       , limit: 4000
      t.text     :cy_address    , limit: 1000
      t.string   :cy_zip        , limit: 20
      t.string   :cy_city       , limit: 100
      t.string   :cy_state      , limit: 100
      t.string   :cy_country    , limit: 100 
      t.string   :cy_website    , limit: 100
      t.string   :cy_email      , limit: 100
      t.string   :cy_phone      , limit: 100
      t.string   :cy_type       , limit: 100
      t.string   :cy_legal      , limit: 100
      t.string   :role          , limit: 100
      t.string   :from_date     , limit: 20
      t.string   :job_location  , limit: 100
      t.text     :job_desc      , limit: 100
      t.string   :action        , limit: 100
      t.string   :action_type   , limit: 20
      t.string   :started_at    , limit: 20
      t.string   :ended_at      , limit: 20
      t.text     :note          , limit: 4000
            
      t.timestamps null: false
    end

    create_table :parameters do |t|
      t.integer  :parameters_list_id
      t.string   :name
      t.text     :description
      t.datetime :active_from
      t.datetime :active_to
      t.string   :parent_list
      t.string   :param_value
      t.string   :param_code
      t.integer  :owner_id

      t.string   :created_by
      t.string   :updated_by      
      t.timestamps null: false
    end
  
    create_table :parameters_lists do |t|
      t.string   :code
      t.string   :name
      t.text     :description
      t.integer  :owner_id

      t.string   :created_by
      t.string   :updated_by      
      t.timestamps null: false
    end

  end
end
