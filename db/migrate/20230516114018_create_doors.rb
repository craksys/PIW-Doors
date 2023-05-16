class CreateDoors < ActiveRecord::Migration[7.0]
  def change
    create_table :doors do |t|
      t.integer :id
      t.string :name

      t.timestamps
    end
  end
end
