class AlterUsers < ActiveRecord::Migration
  def change
    add_column "users", :status_id, :integer, null: false
    add_column "users", :owner_id, :integer, null: false
    add_column "users", :session_id, :string, limit: 100, null: false
    add_column "users", :created_by, :string, limit: 100, null: false
    add_column "users", :updated_by, :string, limit: 100, null: false
  end
end
