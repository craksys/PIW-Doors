class AddTimestampToLogs < ActiveRecord::Migration[7.0]
  def change
    add_column :logs, :timestamp, :datetime
  end
end
