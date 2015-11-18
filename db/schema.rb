class CreateBasicTables < ActiveRecord::Migration
  def change

    create_table :organisations do |t|
      t.string   :name          , limit: 100, null: false, index: true
      t.text     :description   , limit: 4000
      t.text     :address       , limit: 1000
      t.string   :zip           , limit: 20
      t.string   :city          , limit: 100
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
      t.string   :name          , limit: 100, null: false, index: true
      t.integer  :title_id	
      t.text     :description   , limit: 4000
      t.text     :address       , limit: 1000
      t.string   :zip           , limit: 20
      t.string   :city          , limit: 100
      t.string   :website       , limit: 100
      t.string   :email         , limit: 100
      t.string   :phone         , limit: 100
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
      t.string   :website       , limit: 100
      t.string   :email         , limit: 100
      t.string   :phone         , limit: 100
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
      t.text     :address       , limit: 1000
      t.string   :zip           , limit: 20
      t.string   :city          , limit: 100
      t.string   :website       , limit: 100
      t.string   :phone         , limit: 100
      t.datetime :planned_at
      t.datqtime :closing_at
      t.datetime :started_at
      t.datetime :ended_at
      t.datetime :due_at
      t.decimal  :duration      , precision: 12, scale: 2
      t.integer  :priority_id   , default: 0
      t.integer  :type_id       , null: false, default: 0
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
      t.string   :title
      t.string   :first_name
      t.string   :mid_name
      t.string   :name          , limit: 100, null: false, index: true
      t.text     :description   , limit: 4000
      t.text     :address       , limit: 1000
      t.string   :zip           , limit: 20
      t.string   :city          , limit: 100
      t.string   :website       , limit: 100
      t.string   :email         , limit: 100
      t.string   :phone         , limit: 100
      t.text     :categories    , limit: 100
      t.string   :language
      t.text     :description
      t.string   :location
      t.string   :email
      t.string   :phone
      t.string   :url
      t.text     :note
      t.string   :image_url
      t.string   :role
      t.string   :company
      t.string   :from_date
      t.string   :job_location
      t.text     :job_desc
      t.string   :industry
      t.string   :cy_number
      t.string   :cy_street
      t.string   :cy_address_info
      t.string   :zip
      t.string   :pobox
      t.string   :cy_state
      t.string   :cy_country
      t.string   :action
      t.datetime   :created_at,      null: false
      t.datetime   :updated_at,      null: false
      
      t.timestamps null: false
    end


end
