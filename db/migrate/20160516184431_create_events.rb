class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :name, null: false, limit: 32
      t.date :start_date, null: false
      t.date :end_date, null: false
      t.text :description
      t.time :renew_period, null: false
      t.references :user, index: true, foreign_key: true

      t.index [:name, :start_date, :end_date], unique: true

      t.timestamps null: false
    end
  end
end
