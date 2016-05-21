class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :username, null: false, limit: 32
      t.string :email, null: false, limit: 40
      t.string :last_name, null: false, limit: 32
      t.string :first_name, null: false, limit: 32
      t.string :second_name, limit: 32
      t.string :password_digest
      t.integer :role, null: false

      t.index [:username, :email], unique: true

      t.timestamps null: false
    end
  end
end
