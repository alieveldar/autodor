class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.string :password_digest
      t.string :role
      t.integer :managestations

      t.timestamps null: false
    end
  end
end
