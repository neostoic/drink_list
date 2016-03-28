class RemovePlacedrinksFromDrinks < ActiveRecord::Migration
  def change
    remove_column :drinks, :price, :decimal
    remove_column :drinks, :place_id, :integer
    remove_column :drinks, :alcohol_id, :integer
  end
end
