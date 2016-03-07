class AlterUsersDocument < ActiveRecord::Migration
  def change
    remove_column "users_documents", :action_id, :integer
    remove_column "users_documents", :action_role_id, :integer
    add_column "users_documents", :document_role_id, :integer, null: false
  end
end
