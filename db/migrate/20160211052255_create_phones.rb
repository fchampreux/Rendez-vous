class CreatePhones < ActiveRecord::Migration
  def change
    create_table :phones do |t|
      t.integer  :phone_type_id   , null: false
      t.string   :phone_name      , limit: 100
      t.text     :phone           , limit: 100
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
