class AddTimestampToPlaces < ActiveRecord::Migration
  def change
    add_column :places, :timestamp, :datetime
  end
end
