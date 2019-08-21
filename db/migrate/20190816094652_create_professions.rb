class CreateProfessions < ActiveRecord::Migration[5.2]
  def change
    create_table :professions do |t|
      t.string :name
    end
    add_index :professions, :name, unique: true
  end
end
