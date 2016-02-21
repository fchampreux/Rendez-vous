class RemoveEntityAddresses < ActiveRecord::Migration
  def change
    remove_column :organisations, :address, :text
    remove_column :organisations, :city, :string
    remove_column :organisations, :zip, :string
    remove_column :organisations, :state, :string
    remove_column :organisations, :country_id, :integer
    remove_column :organisations, :website, :string
    remove_column :organisations, :email, :string
    remove_column :organisations, :phone, :string
    remove_column :members, :address, :text
    remove_column :members, :city, :string
    remove_column :members, :zip, :string
    remove_column :members, :state, :string
    remove_column :members, :country_id, :integer
    remove_column :members, :website, :string
    remove_column :members, :email, :string
    remove_column :members, :mobile, :string
    remove_column :members, :phone, :string
    remove_column :projects, :address, :text
    remove_column :projects, :city, :string
    remove_column :projects, :zip, :string
    remove_column :projects, :state, :string
    remove_column :projects, :country_id, :integer
    remove_column :projects, :website, :string
    remove_column :projects, :email, :string
  end
end
