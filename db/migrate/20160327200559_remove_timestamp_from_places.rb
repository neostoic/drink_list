class RemoveTimestampFromPlaces < ActiveRecord::Migration
  def change
    remove_column :places, :timestamp, :datetime
  end
end
