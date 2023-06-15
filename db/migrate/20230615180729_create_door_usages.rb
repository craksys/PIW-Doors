class CreateDoorUsages < ActiveRecord::Migration[7.0]
  def change
    create_table :door_usages do |t|
      t.references :user, null: false, foreign_key: true
      t.references :room, null: false, foreign_key: true
      t.datetime :opened_at

      t.timestamps
    end
  end
end
