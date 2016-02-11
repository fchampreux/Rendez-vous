class CreateAddresses < ActiveRecord::Migration
  def change
    create_table :addresses do |t|
      t.integer  :address_type_id , null: false
      t.string   :address_name    , limit: 100
      t.text     :address         , limit: 50
      t.string   :zip             , limit: 20
      t.string   :city            , limit: 50
      t.string   :state           , limit: 50
      t.integer  :country_id      , null: false
      t.string   :entity_type     , null: false
      t.integer  :entity_id       , null: false
      t.string   :created_by      , limit: 100,             null: false
      t.string   :updated_by      , limit: 100,             null: false
      t.string   :session_id      , limit: 100,             null: false
      t.integer  :status_id       , default: 0
      t.datetime :active_from     , null: false
      t.datetime :active_to

      t.timestamps null: false
    end
  end
end
