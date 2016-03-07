class AlterUsersProject < ActiveRecord::Migration
  def change
    remove_column "users_projects", :action_id, :integer
    remove_column "users_projects", :action_role_id, :integer
    add_column "users_projects", :project_role_id, :integer, null: false
  end
end
