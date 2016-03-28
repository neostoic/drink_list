class RenamePlacedrinksAndDrinks < ActiveRecord::Migration
  def change
    rename_table :drinks, :recipes
    rename_table :placedrinks, :drinks
  end
end
