class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.boolean :admin
      t.string :email
      t.string :name
      t.string :password

      t.timestamps
    end
  end
end
