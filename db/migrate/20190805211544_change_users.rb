class ChangeUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :photoUrl
    remove_column :users, :email_isVerified
    add_column :users, :photo_url, :string
    add_column :users, :email_verified, :boolean, default: false
  end
end
