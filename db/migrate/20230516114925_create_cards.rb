class CreateCards < ActiveRecord::Migration[7.0]
  def change
    create_table :cards do |t|
      t.integer :card_id
      t.integer :user_id
      t.string :card_num

      t.timestamps
    end
  end
end
