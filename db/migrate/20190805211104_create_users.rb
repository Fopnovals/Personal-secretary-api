class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :first_name
      t.string :last_name
      t.string :email
      t.boolean :public, default:true
      t.boolean :email_isVerified, default:false
      t.string :role, default:'user'
      t.string :password_digest
      t.string :photoUrl

      t.timestamps
    end
  end
end
