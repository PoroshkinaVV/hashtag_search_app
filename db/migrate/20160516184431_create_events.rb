class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false, limit: 32
      t.datetime :start_at, null: false
      t.datetime :end_at, null: false
      t.text :description
      t.integer :renew_period, null: false
      t.references :user, index: true, foreign_key: true

      t.index [:name, :start_at, :end_at], unique: true

      t.timestamps null: false
    end
  end
end
