class CreateHashtagEvents < ActiveRecord::Migration
  def change
    create_table :hashtag_events do |t|
      t.references :hashtag, index: true, foreign_key: true, null: false
      t.references :event, index: true, foreign_key: true, null: false

      t.index [:hashtag_id, :event_id], unique: true

      t.timestamps null: false
    end
  end
end
