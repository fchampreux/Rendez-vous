class SetupAuditTrail < ActiveRecord::Migration
  def change
    change_table "actions" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
    end
    change_table "actions_documents" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "actions_members" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "actions_organisations" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "actions_projects" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "documents" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
    end
    change_table "documents_items" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "documents_members" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "documents_organisations" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "documents_projects" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "items" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
    end
    change_table "items_projects" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "leads_imports" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
    end
    change_table "members" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
    end
    change_table "members_organisations" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "members_projects" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "opportunities" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "organisations" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
    end
    change_table "organisations_projects" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
      t.remove :main_relation
      t.boolean :main_relation, default: false
    end
    change_table "projects" do |t|
      t.string :created_by, limit: 100, null: false
      t.string :updated_by, limit: 100, null: false
      t.string :session_id, limit: 100, null: false
    end
    change_table "parameters" do |t|

    end
    change_table "parameters_list" do |t|

    end

  end
end
