class RemoveAlcoholFromDrinks < ActiveRecord::Migration
  def change
    remove_column :drinks, :alcohol, :string
  end
end
