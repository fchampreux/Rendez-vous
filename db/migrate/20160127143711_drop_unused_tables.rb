class DropUnusedTables < ActiveRecord::Migration

  def change
    drop_table :organisations_projects
    drop_table :members_projects
    drop_table :actions_projects
    drop_table :actions_documents
    drop_table :documents_items
  end
end
