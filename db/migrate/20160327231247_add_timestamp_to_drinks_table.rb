class AddTimestampToDrinksTable < ActiveRecord::Migration
  def change
    add_column :drinks, :created_at, :datetime
    add_column :drinks, :updated_at, :datetime
  end
end
