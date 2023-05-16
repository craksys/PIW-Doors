class CreateAccessRights < ActiveRecord::Migration[7.0]
  def change
    create_table :access_rights do |t|
      t.integer :door_id
      t.integer :user_id

      t.timestamps
    end
  end
end
