class CreateBasicTables < ActiveRecord::Migration
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
    
    create_table :people do |t|
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
      t.datqtime :closing_at
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
    
    create_table :leads_imports do |t|
      t.string   :title         , limit: 100
      t.string   :first_name    , limit: 100
      t.string   :mid_name      , limit: 100
      t.string   :last_name     , limit: 100, null: false, index: true
      t.text     :description   , limit: 4000
      t.text     :address       , limit: 1000
      t.string   :zip           , limit: 20
      t.string   :city          , limit: 100
      t.string   :website       , limit: 100
      t.string   :email         , limit: 100
      t.string   :phone         , limit: 100
      t.text     :categories    , limit: 100
      t.string   :language      , limit: 100  
      t.string   :location      , limit: 100
      t.string   :email         , limit: 100
      t.string   :phone         , limit: 100
      t.string   :url           , limit: 100 
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
      t.string   :role          , limit: 100
      t.string   :from_date     , limit: 20
      t.string   :role          , limit: 100
      t.string   :job_location  , limit: 100
      t.text     :job_desc      , limit: 100
      t.string   :action_id     , limit: 100
      t.datetime   :created_at,      null: false
      t.datetime   :updated_at,      null: false
      
      t.timestamps null: false
    end


end
