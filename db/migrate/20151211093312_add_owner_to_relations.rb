class AddOwnerToRelations < ActiveRecord::Migration
  def change
    add_column :actions_documents, :owner_id, :integer, null: false
    add_column :actions_members, :owner_id, :integer, null: false
    add_column :actions_organisations, :owner_id, :integer, null: false
    add_column :actions_projects, :owner_id, :integer, null: false
    add_column :documents_items, :owner_id, :integer, null: false
    add_column :documents_members, :owner_id, :integer, null: false
    add_column :documents_organisations, :owner_id, :integer, null: false
    add_column :documents_projects, :owner_id, :integer, null: false
    add_column :items_projects, :owner_id, :integer, null: false
    add_column :members_organisations, :owner_id, :integer, null: false
    add_column :members_projects, :owner_id, :integer, null: false
    add_column :opportunities, :owner_id, :integer, null: false
    add_column :organisations_projects, :owner_id, :integer, null: false    
  end
end
