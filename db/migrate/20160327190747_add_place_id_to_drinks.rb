class AddPlaceIdToDrinks < ActiveRecord::Migration
  def change
    add_column :drinks, :place_id, :integer
  end
end
