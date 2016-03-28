class AddRecipeToDrinks < ActiveRecord::Migration
  def change
    remove_column :drinks, :drink_id, :integer
    add_column :drinks, :recipe_id, :integer
  end
end
