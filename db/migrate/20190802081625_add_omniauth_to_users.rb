class AddOmniauthToUsers < ActiveRecord::Migration[5.2]
  def change
    add_column :users, :provider, :string
    add_column :users, :uid, :string
    add_column :users, :email_verified, :boolean, default: false
    add_column :users, :phone_number, :string
    add_column :users, :image, :text
  end
end
