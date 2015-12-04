class AddCodeToObjects < ActiveRecord::Migration
  def change
    change_table "organisations" do |t|
      t.string :code, limit:100
    end
    change_table "projects" do |t|
      t.string :code, limit:100
    end
    change_table "documents" do |t|
      t.string :code, limit:100
      t.string :chrono, limit:100
    end

  remove_index "members", name: "index_members_on_last_name"
  remove_index "projects",  name: "index_projects_on_name"
  remove_index "organisations", name: "index_organisations_on_name"
  remove_index "items",  name: "index_items_on_code"
  remove_index "items", name: "index_items_on_name"
  remove_index "documents", name: "index_documents_on_name"
  remove_index "actions", name: "index_actions_on_name"
  
  add_index "members", ["last_name"], name: "members_idx_last_name"
  add_index "members", ["first_name"], name: "members_idx_first_name"
  add_index "projects", ["name"], name: "projects_idx_name"
  add_index "projects", ["code"], name: "projects_idx_code"
  add_index "organisations", ["name"], name: "organisations_idx_name"
  add_index "organisations", ["code"], name: "organisations_idx_code"
  add_index "items", ["code"], name: "items_idx_code"
  add_index "items", ["name"], name: "items_idx_name"
  add_index "documents", ["name"], name: "documents_idx_name"
  add_index "documents", ["code"], name: "documents_idx_code"
  add_index "documents", ["chrono"], name: "documents_idx_chrono"
  add_index "actions", ["name"], name: "actions_idx_name"
    
  end
end


 
