class AddSplitFullNameToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :first_name, :string
    add_column :users, :last_name, :string
    remove_column :users, :name, :string
    remove_column :users, :role, :string
    add_column :users, :role, :string, :default => 'user'
  end
end
