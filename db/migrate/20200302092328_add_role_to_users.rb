class AddRoleToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :roles, :string, array: true, default: []
    add_column :users, :status, :string
    add_column :users, :playa_name, :string
    add_column :users, :facebook_url, :string
  end
end
