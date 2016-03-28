class CreatePlacedrinks < ActiveRecord::Migration
  def change
    create_table :placedrinks do |t|
      t.integer :drink_id
      t.integer :alcohol_id
      t.integer :place_id
      t.decimal :price
      t.timestamp
    end
  end
end
