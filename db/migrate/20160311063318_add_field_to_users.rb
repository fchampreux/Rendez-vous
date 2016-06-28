class AddFieldToUsers < ActiveRecord::Migration
  def change
    add_column :users, :is_admin, :boolean, default: false    
    add_column :users, :description, :string, limit: 1000
    add_column :users, :active_from, :date, null: false
    add_column :users, :active_to, :date, null: false
  end
end
