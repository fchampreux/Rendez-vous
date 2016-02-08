class CreatJoinTables < ActiveRecord::Migration
  def change
       
    create_join_table :organisations, :members, table_name: :members_organisations do |t|
      t.integer  :organisation_id        , null: false
      t.integer  :member_id              , null: false
      t.datetime :started_at             , null: false
      t.datetime :ended_at
      t.binary   :main_relation          , null: false
      t.integer  :status_id              , null: false, default: 0
      t.integer  :organisation_role_id   , null: false, default: 0
      t.integer  :member_role_id         , null: false, default: 0
      t.text     :note                   , limit: 4000
      
      t.timestamps null: false
    end
  end
end
